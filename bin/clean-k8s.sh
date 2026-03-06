get_namespaces() {
  k get ns -o json | jq ".items[0].metadata.name" | awk -F'"' '{print $2}'
}

get_jobs_in_namespace() {
  local ns=$1
  k get -n "$ns" job -o json | jq ".items[0].metadata.name" | awk -F'"' '{print $2}'
}

delete_job_in_namespace() {
  local ns=$1
  local job=$2
  k -n "$ns" delete job "$job"
}

delete_jobs_in_namespace() {
  local ns=$1
  for job in $(get_jobs_in_namespace "$ns"); do
    delete_job_in_namespace "$ns" "$job"
  done
}

delete_all_jobs_in_k8s() {
  for ns in $(get_namespaces); do
    delete_jobs_in_namespace "$ns"
  done
}

main() {
  delete_all_jobs_in_k8s
}

main
