kubectl get applications -o=jsonpath='{range .items[?(@.status.health.status=="Unknown")]}{.metadata.name}{"\n"}' |
  xargs -I {} kubectl patch application {} --type=json -p='[{"op": "remove", "path": "/metadata/finalizers"}]'
