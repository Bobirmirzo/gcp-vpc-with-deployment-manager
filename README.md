# Create Environment with Deployment manager

By using this repository, you can create following simple environment in GCP by using Deployment Manager:

![](Environment.png)

## Running deployment manager

Run following code to run deployment manager and create the above GCP environment

```
gcloud config set project {project.id}
./deployments_create.sh my-infra infra.yaml
```

If you want delete or update services, run the following:

```
./deployments_delete.sh {services_name} infra.yaml
./deployments_update.sh {services_name} infra.yaml
```