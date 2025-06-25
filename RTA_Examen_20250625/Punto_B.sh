#!/bin/bash
if [ $# -ne 2 ]; then
    echo "USO: $0 <usuario_origen_clave> <path_a_Lista_Usuarios.txt>"
    exit 1
fi

USUARIO_ORIGEN_CLAVE="$1"
ARCHIVO="$2"

if [ ! -f "$ARCHIVO" ]; then
    echo "ERROR: No existe el archivo: $ARCHIVO"
    exit 2
fi

id "$USUARIO_ORIGEN_CLAVE" >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "ERROR: No existe el usuario de referencia: $USUARIO_ORIGEN_CLAVE"
    exit 3
fi

CLAVE=$(sudo getent shadow "$USUARIO_ORIGEN_CLAVE" | cut -d: -f2)
if [ -z "$CLAVE" ]; then
    echo "ERROR: No se pudo obtener la clave encriptada"
    exit 4
fi

IFS_ANT="$IFS"
IFS=":"
CANT=0

while read USUARIO GRUPO RESTO
do
    [ -z "$USUARIO" ] && continue
    echo "$USUARIO" | grep -q '^#' && continue

    getent group "$GRUPO" >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        sudo groupadd "$GRUPO"
        echo "Se creó el grupo $GRUPO"
    else
        echo "El grupo $GRUPO ya existe"
    fi

    id "$USUARIO" >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        sudo useradd -m -s /bin/bash -g "$GRUPO" "$USUARIO"
        sudo usermod -p "$CLAVE" "$USUARIO"
        echo "Se creó el usuario $USUARIO y se asignó clave del usuario $USUARIO_ORIGEN_CLAVE"
        CANT=$((CANT+1))
    else
        echo "El usuario $USUARIO ya existe"
    fi

    getent passwd "$USUARIO"
    getent group "$GRUPO"
    HOMEUSER=$(getent passwd "$USUARIO" | cut -d: -f6)
    ls -ld "$HOMEUSER"
    echo "----------------------------"
done < "$ARCHIVO"

IFS="$IFS_ANT"

echo "Se crearon $CANT usuarios nuevos."
echo "Visualización de los últimos $CANT usuarios en /etc/passwd:"
tail -n "$CANT" /etc/passwd

echo "Muestro grupos a los que pertenecen:"
tail -n "$CANT" /etc/passwd | cut -d: -f1 | while read U; do id "$U"; done

echo "FIN DEL PROCESO"

