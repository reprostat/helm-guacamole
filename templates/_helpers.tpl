{{- define "guacamole.daemon.name" -}}
{{- printf "%s-daemon" .Release.Name }}
{{- end }}

{{- define "guacamole.portal.name" -}}
{{- printf "%s-portal" .Release.Name }}
{{- end }}
