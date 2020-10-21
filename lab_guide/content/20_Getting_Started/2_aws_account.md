+++
title = "AWS Account"
chapter = false
weight = 2
+++

{{% notice warning %}}
You are responsible for the cost of the AWS services used while running this workshop in your AWS account.
{{% /notice %}}

{{% notice warning %}}
Your account must have the ability to create new IAM roles and scope other IAM permissions.
{{% /notice %}}


## Create an account 

1. If you don't already have an AWS account with Administrator access: [create
one now](http://docs.aws.amazon.com/connect/latest/adminguide/gettingstarted.html#sign-up-for-aws)

2. Once you have an AWS account, ensure you are following the remaining workshop steps
as an **IAM user** with administrator access to the AWS account:
[Create a new IAM user to use for the workshop](https://console.aws.amazon.com/iam/home?region=us-east-1#/users$new)

1. Enter the user details:
![Create User](/images/getting_started/iam-1-create-user.png)

4. Attach the AdministratorAccess IAM Policy:
![Attach Policy](/images/getting_started/iam-2-attach-policy.png)

5. Click to create the new user:
![Confirm User](/images/getting_started/iam-3-create-user.png)

6. Take note of the login URL and save:
![Login URL](/images/getting_started/iam-4-save-url.png)

