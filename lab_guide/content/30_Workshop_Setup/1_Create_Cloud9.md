+++
title = "Create Cloud9 Workspace"
chapter = false
weight = 1
+++

![image](/images/workshop_setup/ad_team_tech_lead.png)

{{% notice warning %}}
The Cloud9 workspace should be built by an IAM user with Administrator privileges,
not the root account user. Please ensure you are logged in as an IAM user, not the root
account user.
{{% /notice %}}

<!---
{{% notice info %}}
This workshop was designed to run in the **Oregon (us-west-2)** region. **Please don't
run in any other region.** Future versions of this workshop will expand region availability,
and this message will be removed.
{{% /notice %}}
-->

{{% notice tip %}}
Ad blockers, javascript disablers, and tracking blockers should be disabled for
the cloud9 domain, or connecting to the workspace might be impacted.
Cloud9 requires third-party-cookies. You can whitelist the [specific domains]( https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading).
{{% /notice %}}


### Launch Cloud9 in your closest region:

- **N. California** 
  - [https://us-west-1.console.aws.amazon.com/cloud9/home?region=us-west-1](https://us-west-1.console.aws.amazon.com/cloud9/home?region=us-west-1)

- **Oregon** 
  - [https://us-west-2.console.aws.amazon.com/cloud9/home?region=us-west-2](https://us-west-2.console.aws.amazon.com/cloud9/home?region=us-west-2)

- **N. Virginia** 
  - [https://us-east-1.console.aws.amazon.com/cloud9/home?region=us-east-1](https://us-east-1.console.aws.amazon.com/cloud9/home?region=us-east-1)

- **Ohio** 
  - [https://us-east-2.console.aws.amazon.com/cloud9/home?region=us-east-2](https://us-east-2.console.aws.amazon.com/cloud9/home?region=us-east-2)

- **Ireland** 
  - [https://eu-west-1.console.aws.amazon.com/cloud9/home?region=eu-west-1](https://eu-west-1.console.aws.amazon.com/cloud9/home?region=eu-west-1)

- **Singapore** 
  - [https://ap-southeast-1.console.aws.amazon.com/cloud9/home?region=ap-southeast-1](https://ap-southeast-1.console.aws.amazon.com/cloud9/home?region=ap-southeast-1)


{{% notice warning %}}
You **must use** the **t2.large** instance type for this workshop.  If the **t2.large** instance type is not available in the region you first selected, please choose a different region where the **t2.large** instance type is available.
{{% /notice %}}

### Select your options:

- Select **Create environment**
- Name it **AppD-Workshop**, click Next.
- Choose **t2.large** for instance type
- Ensure **Amazon Linux** is selcted as the platform
- Choose **After a day** for cost saving setting
- Click **Create environment**

![c9configure](/images/workshop_setup/c9_configure_01.png)

- When it comes up, customize the environment by closing the **welcome tab**
and **lower work area**, and opening a new **terminal** tab in the main work area:
![c9before](/images/workshop_setup/c9_before.png)

- Your workspace should now look like this:
![c9after](/images/workshop_setup/c9_after.png)

- If you like this theme, you can choose it yourself by selecting **View / Themes / Solarized / Solarized Dark**
in the Cloud9 workspace menu.