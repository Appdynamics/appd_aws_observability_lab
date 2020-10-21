+++
title = "Update Cloud9 Workspace"
chapter = false
weight = 4
+++

![image](/images/workshop_setup/ad_team_tech_lead.png)

{{% notice info %}}
Cloud9 normally manages IAM credentials dynamically. This isn’t currently compatible with the EKS IAM authentication, so we will disable it and rely on the IAM role instead.
{{% /notice %}}

- Return to your workspace and click the gear icon (in top right corner), or click to open a new tab and choose “Open Preferences”
- Select **AWS Settings**
- Turn OFF **AWS managed temporary credentials**
- Close the Preferences tab

![c9configure](/images/workshop_setup/c9_configure_02.png)

### Validate the IAM Role

Use the [GetCallerIdentity](https://docs.aws.amazon.com/cli/latest/reference/sts/get-caller-identity.html) CLI command to validate that the Cloud9 IDE is using the correct IAM role.

```
aws sts get-caller-identity --query Arn | grep AppD-Workshop-Admin -q && echo "IAM role valid" || echo "IAM role NOT valid"
```

{{% notice warning %}}
If the IAM role is not valid, DO NOT PROCEED. Go back and confirm the steps on this page.
{{% /notice %}}