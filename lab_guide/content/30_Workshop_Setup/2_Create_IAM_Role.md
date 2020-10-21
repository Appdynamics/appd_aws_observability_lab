+++
title = "Create IAM Role for Workspace"
chapter = false
weight = 2
+++

![image](/images/workshop_setup/ad_team_tech_lead.png)

1 . Follow [this deep link to create an IAM role with Administrator access](https://console.aws.amazon.com/iam/home#/roles$new?step=review&commonUseCase=EC2%2BEC2&selectedUseCase=EC2&policies=arn:aws:iam::aws:policy%2FAdministratorAccess).

2 . Confirm that **AWS service** and **EC2** are selected, then click **Next** to view permissions.

3 . Confirm that **AdministratorAccess** is checked, then click **Next: Tags** to assign tags.

4 . Take the defaults, and click **Next: Review** to review.

5 . Enter **AppD-Workshop-Admin** for the Name, and click **Create role**.

![image](/images/workshop_setup/iam_create_role.png)
