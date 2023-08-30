##########################################################################################

        ## Criação de EC2 e VCP utilizando diretório do módulo vpc localmente ##

###########################################################################################
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.14.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | ./modulo-vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.vm-ec2](https://registry.terraform.io/providers/hashicorp/aws/5.14.0/docs/resources/instance) | resource |
| [aws_key_pair.key](https://registry.terraform.io/providers/hashicorp/aws/5.14.0/docs/resources/key_pair) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_pub_key"></a> [aws\_pub\_key](#input\_aws\_pub\_key) | Public key para VM EC2 na AWS | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Região onde será criado os recursos da aws | `string` | `"us-east-1"` | no |
| <a name="input_tag"></a> [tag](#input\_tag) | Tag individual dos recursos criados na aws | `string` | `"terraform"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
<!-- END_TF_DOCS -->