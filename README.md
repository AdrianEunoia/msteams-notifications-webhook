# My Notification Action

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/AdrianEunoia/pruebas-actions/WorkflowStatus?label=WorkflowStatus)](https://github.com/AdrianEunoia/pruebas-actions/actions)

## Descripción

Esta acción de GitHub te permite enviar notificaciones a través de Microsoft Teams en caso de éxito o fallo en tu flujo de trabajo.

## Uso

Para usar esta acción, simplemente añade el siguiente bloque a tu archivo de flujo de trabajo `.github/workflows/your-action.yml`:

```yaml
name: Tu Flujo de Trabajo

on:
  push:
    branches:
      - main

jobs:
  notificationActions:
    name: Enviar Notificación
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repositorio
        uses: actions/checkout@v2

      - name: Ejecutar Tu Acción
        uses: AdrianEunoia/teams-webhook-notify@v1
        with:
          webhook-teams: ${{ secrets.WEBHOOK_TEAMS }}
```

Asegúrate de definir el secreto WEBHOOK_TEAMS en la configuración de secretos de tu repositorio.

# Configuración

## Entradas

webhook-teams (obligatorio): La URL del webhook de Microsoft Teams.

# Detalles Internos
## Esta acción consta de dos scripts ubicados en el directorio src:

success-script.sh: Script que se ejecuta en caso de éxito.
failure-script.sh: Script que se ejecuta en caso de fallo.

# Ejemplos
## Puedes encontrar ejemplos adicionales y personalizaciones en la sección de ejemplos.

Contribuciones
¡Las contribuciones son bienvenidas! Si encuentras algún problema o tienes alguna mejora, por favor abre un problema o envía un pull request.

Licencia
Este proyecto está bajo la Licencia MIT.