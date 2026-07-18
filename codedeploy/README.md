# Laboratorio AWS CodeDeploy

## Estructura del Flujo
CloudFormation (Infraestructura) ➔ EC2 (Versión 1 - Naranja) ➔ CodeDeploy Agent ➔ Despliegue de Versión 2 (Verde)

## Archivos del Repositorio
* `cloudformation/01-infrastructure.yaml`: Red, accesos e instancia EC2.
* `cloudformation/02-codedeploy.yaml`: Configuración del motor de CodeDeploy.
* `app/appspec.yml`: Instrucciones de ciclo de vida para AWS.
* `app/scripts/`: Scripts de parada, arranque y validación del servidor.