#!/bin/bash
set -e

VERSION="2"
FECHA=$(date)

cat << EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenido</title>
    <style>
        body { background-color: #f0f4f8; font-family: sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .card { background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); text-align: center; }
        h1 { color: #333; }
        .version { color: #28a745; font-weight: bold; font-size: 1.5em; }
    </style>
</head>
<body>
    <div class="card">
        <h1>Bienvenido</h1>
        <p class="version">Version ${VERSION}</p>
        <p>Implementado con AWS CodeDeploy</p>
        <small>Deploy ejecutado el: ${FECHA}</small>
    </div>
</body>
</html>
EOF

systemctl start nginx || systemctl reload nginx