{{- define "guacamole.daemon.name" -}}
{{- printf "%s-daemon" .Release.Name }}
{{- end }}

{{- define "guacamole.portal.name" -}}
{{- printf "%s-portal" .Release.Name }}
{{- end }}

{{/*
Formats imagePullSecrets. Input is (dict "root" . "imagePullSecrets" .{specific imagePullSecrets})
*/}}
{{- define "guacamole.imagePullSecrets" -}}
{{- $root := .root }}
{{- range (concat .root.Values.global.imagePullSecrets .imagePullSecrets) }}
{{- if eq (typeOf .) "map[string]interface {}" }}
- {{ toYaml (dict "name" (tpl .name $root)) | trim }}
{{- else }}
- name: {{ tpl . $root }}
{{- end }}
{{- end }}
{{- end }}