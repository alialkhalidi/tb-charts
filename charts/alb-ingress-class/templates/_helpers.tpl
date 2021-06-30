{{/* vim: set filetype=mustache: */}}
{{/*

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "alb-ingress-class.chart" -}}
{{- $defaultChartName := default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- printf "%s-%s" $defaultChartName .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "alb-ingress-class.labels" -}}
helm.sh/chart: {{ include "alb-ingress-class.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Create the name of the ingress class to use
*/}}
{{- define "alb-ingress-class.ingressClassName" -}}
{{ default "alb" .Values.ingressClass.name }}
{{- end -}}

{{/*
Create the name of the ingress class parameters to use
*/}}
{{- define "alb-ingress-class.ingressClassParamsName" -}}
{{ default "default" .Values.ingressClassParams.name }}
{{- end -}}
