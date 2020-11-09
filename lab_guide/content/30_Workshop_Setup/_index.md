+++
title = "Workshop Setup"
chapter = false
weight = 30
+++

Zoe is the Technical Lead for the modernization project at AD Financial.  She will walk you through the steps to get the workshop setup completed.  Please review the steps below and associated <i class='fas fa-bolt'></i> notes to ensure a smooth setup.


![image](/images/workshop_setup/ad_team_tech_lead.png)

Below are the workshop setup steps you will need to complete:

<i class='fas fa-chevron-right'></i>&nbsp; **1 .** Create your Cloud9 Workspace

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='fas fa-bolt'></i> You **must use** the **t2.large** instance type when creating your Cloud9 instance

<i class='fas fa-chevron-right'></i>&nbsp; **2 .** Create an IAM Role for your Cloud9 Workspace

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='fas fa-bolt'></i> You **must create** the IAM Role with **AdministratorAccess**

<i class='fas fa-chevron-right'></i>&nbsp; **3 .** Attach the IAM Role to your Cloud9 Workspace

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='fas fa-bolt'></i> You **must attach** the IAM Role with **AdministratorAccess** to your Cloud9 instance

<i class='fas fa-chevron-right'></i>&nbsp; **4 .** Update your Cloud9 Workspace

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='fas fa-bolt'></i> You **must turn OFF** AWS managed temporary credentials

<i class='fas fa-chevron-right'></i>&nbsp; **5 .** Start Your Engines !

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='fas fa-bolt'></i> You **must check** for available EKS resources before you start racing to the finish line <i class='fas fa-cog fa-spin'></i>