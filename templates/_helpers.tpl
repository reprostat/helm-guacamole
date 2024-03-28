{{- define "guacamole.daemon.name" -}}
{{- printf "%s-daemon" .Release.Name }}
{{- end }}

{{- define "guacamole.portal.name" -}}
{{- printf "%s-portal" .Release.Name }}
{{- end }}

{{- define "guacamole.client.name" -}}
{{- printf "%s-client" .Release.Name }}
{{- end }}

{{- define "guacamole.password.secret" -}}
{{- if eq .Values.database.password.secret "" }}
{{- .Release.Name }}
{{- else }}
{{- .Values.database.password.secret }}
{{- end }}
{{- end }}