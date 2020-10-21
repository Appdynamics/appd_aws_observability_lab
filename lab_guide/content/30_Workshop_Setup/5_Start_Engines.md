+++
title = "Start Your Engines ! "
chapter = false
weight = 5
+++

![image](/images/workshop_setup/ad_team_tech_lead.png)

<i class='fas fa-asterisk'></i> **TBD --- provide links to check each of the resources mentioned below**

{{% notice warning %}}
You must have enough available VPCs, Elastic IPs, and NAT Gatweways in the region you are working in to successfully create an EKS Cluster with a managed node group of 2 nodes.
{{% /notice %}}

<br>

### Let's do this ! <i class='fas fa-cog fa-spin'></i>

<br>

Now that you've got all the prerequisites out of the way, you can kick off the final setup steps and go grab a cup of Java <i class='fas fa-coffee'></i> while the setup utility does the rest.

:small_blue_diamond: Ensure you are in your home directory by executing the command below:

```
cd /home/ec2-user/environment
```

:small_blue_diamond: Download the setup script using the following command:

```
curl --silent -L https://raw.githubusercontent.com/Appdynamics/appd_aws_observability_lab/main/setupWorkshop.sh -o ./setupWorkshop.sh
```

:small_blue_diamond: Use the following command to make the script executable:

```
chmod +x setupWorkshop.sh
```

:small_blue_diamond: Use five (5) letters of your first, and or, your last name to create your unique workshop user name using the command below:

**EXAMPLE:**&nbsp; export appd_workshop_user=TOMSM

```
export appd_workshop_user=<YOUR USER NAME>
```

:small_blue_diamond: Use the command below to execute the setup script::

```
./setupWorkshop.sh
```


{{% notice info %}}
The setup utility takes **approximately 28 minutes to complete**.  Please be patient and take that much needed break you deserve !
{{% /notice %}}

The output from the setup script when it starts, should look like this:
![image](/images/workshop_setup/setup-output-start.png)


The output from the setup script when the EKS cluster is created, should look like this:

<i class='fas fa-asterisk'></i> EKS cluster creation as part of the complete setup, takes approximately 15 minutes of the total time.
![image](/images/workshop_setup/setup-output-eks.png)


The output from the setup script when it ends, should look like this:
![image](/images/workshop_setup/setup-output-end.png)


### What the setup utility does

**01)** Installs Java JDK 1.8 <i class='fas fa-asterisk'></i>

**02)** Resizes the Disk on your C9 instance <i class='fas fa-asterisk'></i>

**03)** Installs kubectl <i class='fas fa-asterisk'></i>

**04)** Installs eksctl <i class='fas fa-asterisk'></i>

**05)** Installs docker-compose <i class='fas fa-asterisk'></i>

**06)** Installs the AppDynamics Database agent <i class='fas fa-asterisk'></i>

**07)** Creates an EC2 security group for extenal access to RDS Databases <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**08)** Creates RDS databases with the security group attached <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**09)** Creates three S3 buckets <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**10)** Creates two Application Performance Monitoring apps in the AppDynamics Controller <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**11)** Creates two Browser Real User Monitoring apps in the AppDynamics Controller <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**12)** Creates two AppDynamics Database collectors in the AppDynamics Controller <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**13)** Creates an RBAC User in the AppDynamics Controller <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**14)** Creates an RBAC Role in the AppDynamics Controller <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**15)** Adds the RBAC User in the AppDynamics Controller to the appropriate RBAC Roles <i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>

**16)** Creates the EKS Cluster <i class='fas fa-asterisk'></i>

**17)** Deploys the Post-Modernization application to the EKS Cluster <i class='fas fa-asterisk'></i>

**18)** Waits for the application to initialize in the EKS Cluster

**19)** Deploys the AppDynamics Machine agent to the EKS Cluster <i class='fas fa-asterisk'></i>

**20)** Deploys the AppDynamics Cluster agent to EKS Cluster <i class='fas fa-asterisk'></i>

**21)** Exposes the website front end with an ELB in the EKS Cluster <i class='fas fa-asterisk'></i>

**22)** Deploys the Pre-Modernization application to your local C9 instance <i class='fas fa-asterisk'></i>

**23)** Creates the teardwown file


<i class='fas fa-asterisk'></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Using a shell script 

<i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Using the AWS Java SDK

<i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i><i class='fas fa-asterisk'></i>&nbsp;&nbsp; Using the AppDynamics REST API

<br>

### Next

Once the setup utility has finished, you can find your login credentials to your AppDynamics Controller by using the commands below:

```
cd /home/ec2-user/environment

cat workshop-user-details.txt
```

While you are waiting for the setup utility to finish, you can go to the next section to find out why **AD Financial** selected **AppDynamics** as their **preferred observability solution**.