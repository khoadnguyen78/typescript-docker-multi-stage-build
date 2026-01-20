{{- define "greeting-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "greeting-service.fullname" -}}
{{ printf "%s-%s" (include "greeting-service.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
