# Setup

1. Environment
   1. create environment: conda env create -f environment.yml
2. Terraform
   1. Install Terraform
      1. Install Terraform : https://developer.hashicorp.com/terraform/install
      2. Extract the executable to a directory of your choosing
      3. Update your system's global PATH environment variable to include the directory that contains the executable.
      4. Video: https://www.youtube.com/watch?v=jFg6VHnt3e8
      5. Check terraform on terminal : terraform --version
      6. Check azure cli on terminal : az --version
   2. Initialize terraform
      1. Create main.tf
      2. Add source
      3. Terminal :
         1. terraform init
         2. terraform validate : to validate the terraform
         3. terraform fmt : to format the terraform files, remove spaces etc.
         4. terraform plan -out=plan -var-file="D:/codes/Projects/de/medallion/variables.tfvars" ( please input your location of project here)
         5. terraform apply -var-file="D:/codes/Projects/de/medallion/variables.tfvars"
         6. terraform destroy -var-file="D:/codes/Projects/de/medallion/variables.tfvars"
   3. Note:
      1. Please note that tf.vars is not included in the git. Please add it to the project with the required information. It should match variables.tf in the root location.
      2. I have created environment.yaml file though for this project, this can be skipped. If you plan to add other files like python, then it would be included.
      3. Please note that it is important to destroy the resources once the project is completed.

# Commands

1. Environment
   1. create a new environment: conda env create -f environment.yml
   2. activate: conda activate <environment_name>
   3. deactivate: conda deactivate
   4. update environment: conda env update --name <environment_name> --file environment.yml
   5. remove: conda env remove --name <environment_name>
   6. List of environment to check : conda env list
2. Terraform
   1. format: terraform fmt
   2. initialize: terraform init
   3. validate: terraform validate
   4. terraform plan -out=plan -var-file="D:/codes/Projects/de/medallion/variables.tfvars" ( please input your location of project here)

# Documentation

1. Terraform: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/consumption_budget_resource_group
2.
