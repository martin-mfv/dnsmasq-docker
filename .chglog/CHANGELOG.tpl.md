{{- if .Versions }}
{{- range .Versions }}
## {{ if .Tag.Previous }}[{{ .Tag.Name }}](https://github.com/{{ $.Info.RepositoryName }}/compare/{{ .Tag.Previous.Name }}...{{ .Tag.Name }}){{ else }}{{ .Tag.Name }}{{ end }} - {{ datetime "2006-01-02" .Tag.Date }}
{{- if .CommitGroups }}

{{- range .CommitGroups }}
### {{ .Title }}

{{- range .Commits }}
- {{ .Subject }}
{{- end }}

{{- end }}
{{- else }}

{{- range .Commits }}
- {{ .Subject }}
{{- end }}
{{- end }}

{{- end }}
{{- end }}
