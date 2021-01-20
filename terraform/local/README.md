# docker-desktop my-app example

This example installs my-app on Docker Desktop.

## Prerequisites
In Docker Desktop, go to the Kubernetes menu and select _Enable local cluster_ or choose the `docker-desktop` context.

If your cluster is stuck at start-up, check [this](https://github.com/docker/for-mac/issues/3649#issuecomment-489141393) for a fix.

For a better visual experience than `kubectl` install [Lens](https://k8slens.dev), then add a cluster selecting the `docker-desktop` context and in the settings enable metrics ([Prometheus](https://prometheus.io/)) to see memory/cpu stats.

## How to use it

Perform the following steps in order:

1. Clone this repo and go to this `terraform/local/` folder (where this README is located)

2. Initialize terraform: `terraform init`

3. Make sure your `/etc/hosts` file contains the following entry:

    127.0.0.1 example.local

4. Create your terraform variables file from the template file `terraform_template.tfvars`:

    - `cp terraform_template.tfvars terraform.tfvars`
    - edit `terraform.tfvars` and populate the variables following their description to customise your installation

5. Install my-app with (in case of errors with this step, please try executing again only this step):

   ```bash
   terraform apply
   ```

6. Connect to:

   | Service    | URL                                   |
   |------------|---------------------------------------|
   | myapp      | http://example.local/my-app      |
   
7. Test load balancing:
```
for i in `seq 1 5`; do \
  curl -L example.local/my-app --stderr - | grep Hostname && echo; \
done
```
8. To uninstall everything:

   ```bash
   terraform destroy
   ```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0 |
| external | ~> 2.0 |
| helm | ~> 1.3 |
| kubernetes | 1.13.2 |

## Providers

| Name | Version |
|------|---------|
| external | ~> 2.0 |
| helm | ~> 1.3 |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
