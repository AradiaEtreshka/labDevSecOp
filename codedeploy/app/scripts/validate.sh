#!/bin/bash
set -e
sleep 3
echo "Validando estado de la aplicacion..."
curl -sIf http://localhost | grep "200 OK"