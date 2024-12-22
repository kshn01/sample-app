# Infra task (task 3)

Create infra using below commands.

```
terraform init

terraform plan

terraform apply
```

After infra deployed. Deploy app using ansible.

RUN: `cd ansible`

Change the public ip of your instance in `inventory` file.

Replace `xx.xx.xx.xx` below with your instance public ip 
```
[myhosts]
xx.xx.xx.xx ansible_user=ubuntu
```

Deploy app using 
```
ansible-playbook -i inventory deploy.yml --private-key /path/to/your/ssh-key/
```