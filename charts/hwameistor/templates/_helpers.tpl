{{/* Allow KubeVersion to be overridden. */}}
{{- define "hwameistor.kubeVersion" -}}
  {{- default .Capabilities.KubeVersion.Version .Values.kubeVersion -}}
{{- end -}}

{{/* Return scheduler image tag. */}}
{{- define "hwameistor.scheduler.tag" -}}
{{- if (semverCompare "> 1.18-0" (include "hwameistor.kubeVersion" .)) }}
{{- printf "%s" .Values.scheduler.tag -}}
{{- else -}}
{{- printf "%s-%s" .Values.scheduler.tag "kube-pre1.18" -}}
{{- end -}}
{{- end -}}
