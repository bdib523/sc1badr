#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
COLOR=$(tr -d '[:space:]' < "$DIR/colores.txt")

cat > "$DIR/web/index.html" <<EOF
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Mi práctica RA7</title>
</head>
<body style="background-color: $COLOR;">
  <h1>Mi primera página</h1>
  <p>Esta página ha sido generada con un script Bash.</p>
</body>
</html>
EOF

echo "index.html generado con el color: $COLOR"
