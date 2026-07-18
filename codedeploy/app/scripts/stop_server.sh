#!/bin/bash
set -e
echo "Deteniendo servidores si existen..."
pkill -f nginx || true