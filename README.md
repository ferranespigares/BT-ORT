CloudFormation templates for BT-AWS-ORTs
Deploy with:
```
aws cloudformation create-stack --stack-name bt-ort-v2 --template-body file://SingleEC2Instance-WebApp.yaml
```
Destroy with:
```
aws cloudformation delete-stack --stack-name bt-ort-v2
```