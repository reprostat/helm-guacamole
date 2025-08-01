{{- define "guacamole.daemon.fullname" -}}
{{- $name := default (printf "%s-daemon" .Release.Name) .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-daemon" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-daemon" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}

{{- define "guacamole.portal.fullname" -}}
{{- $name := default (printf "%s-portal" .Release.Name) .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-portal" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-portal" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}
