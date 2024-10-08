# Boston Azure - 2024
**Deploying high-performance, low-latency file storage using Azure NetApp Files**

Hello and welcome to my presentation of Deploying high-performance low-latency file storage using Azure NetApp Files.

In this repo you will find the slide-deck used for the presetnation as well as the Terraform code used to deploy the demo lab.

### Prerequisites - What do you need?
Below is a list of things you will need to complete this lab.
- An Azure subscription, with credit available, it ain't free :)
- **Please note** - Not all regions support all ANF features, i.e UK West does not currently support ANF standard network features. Make sure, when you choose which region(s) you are going to be deploying into that those regions support your requirements.
- The Azure NetApp Files **Resource Provider** registered in your subscription. Link to do that [HERE](https://learn.microsoft.com/en-us/azure/azure-netapp-files/azure-netapp-files-register)
- Azure CLI installed on your system.
- A code editor, I prefer **VSCode**, link [HERE](https://code.visualstudio.com/Download)
- I also like to use GitHub Desktop, link [HERE](https://desktop.github.com/)
- VSCode extensions help as well. I use Terraform, Azure CLI, Powershell, GitHub and few others.
- Latest version of Terraform installed (Windows users use x64 version), link [HERE](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- I use **Chocolatey** to manage my apps, link [HERE](https://chocolatey.org/install)

### What are we going to do?
We are going to build out a lab using Terraform. The lab will include the following services and features.
- Resource Groups
- Virtual Networks
- Subnets
- Virtual Network Peers
- Virtual Machines
- Azure Keyvault
- ANF Accounts
- ANF Capacity Pools
- ANF Volumes

### Schematic
Below is a high-level visual overview of what we are going to deploy into Azure.

<img src="https://github.com/anthonymashford/Boston-Azure/blob/c9d49ed6f3c377b8e0b64b0b7444cab0900192b2/images/TerraformLab-FTC2022.png">

### Deploying the Lab
Next, we will go through the steps required to deploy the ANF Lab using Terraform and the code in this repo.

1. Clone the Boston-Azure repo onto your system
2. Open yout Terminal and browse to the directory where you downloaded the Terraform files
3. Log in your Azure subscription. Type the command `az login`
4. If you are working with multiple subscription. Make sure the subscription you wish to use it set to `IsDefault` `true`. You can check this by running the following command `az account list -o table`. If you need to change the default subscription then run the follwing command. `az account set --subscription "Your Subdscription Name"`
5. Next you need to initialise the Terraform working directory. 
6. Type the command `terraform init`
7. Create an execution plan. The plan will allow you to visualise your Terraform IaC deployment. 
8. Type the command `terraform plan`
9. Deploy, to execute the actions as defined as part of the 'plan' in the previous step. 
10. Type the command `terraform apply`
11. Once Terraform has completed its checks, you will be prompted to type `yes` to continue. **Note:** If you would like to suppress this request to continue, use the command `terraform apply --auto-approve`
12. Terraform will now start to deploy your code.

### Destroying the Lab
Once you have finished with your lab, you are going to want to remove the resources, afterall they do cost money! Terraform uses a **tfstate** file when it deploys. Providing you have not made any changes to your lab, Terraform will use this **tfstate** file to remove all resources.

1. Type the command `terraform destroy`
2. Once Terraform has completed its checks, you will be prompted to type `yes` to continue. **Note:** If you would like to suppress this request to continue, use the command `terraform destroy --auto-approve`

### Summary
Thats it, you have now successfully deployed resources into Azure using Terraform.
 
I do hope this basic lab of deploying Azure NetApp Files with Terraform has been useful. Check out my other repo's for more Terraform examples.
