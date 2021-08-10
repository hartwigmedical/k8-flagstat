# k8-flagstat
Run sambamba flagstat in kubernetes

Note: k8-flagstat is not used in [pipeline5](https://github.com/hartwigmedical/pipeline5).
The results of k8-flagstat are not guaranteed to be identical to the flagstat created by pipeline5.

### Running in Kubernetes

Need to have the right credentials and a cluster (only need this step once).
```shell script
gcloud container clusters get-credentials rerun-cluster --region europe-west4 --project hmf-crunch>
```

### Usage
Run `./k8-flagstat` for a description of available commands and their usage.

Input and output paths need to be paths in GCP buckets.

### Monitoring
```shell script
kubectl get jobs | grep <your-job-name>
kubectl get pods | grep <your-job-name>
kubectl logs <your-pod-name>
```