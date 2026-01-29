env=$1
action=$2

if [ -z "${env}" ]; then
    echo -e "\e[31mInput missing Environment\e[0m"
fi
if [ -z "${action}" ]; then
    echo -e "\e[31mInsert apply|destroy\e[0m"
fi

rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-"${env}"/state.tfvars
terraform "${action}" -var-file=env-"${env}"/main.tfvars
