+++
title = "Workshop Cleanup"
chapter = false
weight = 1
+++

{{% notice warning %}}
In order to prevent charges to your AWS account, we recommend cleaning up the infrastructure that was created. If you plan to keep things running so you can examine the workshop a bit more, please remember to do the cleanup when you are done. It is very easy to leave things running in an AWS account, forget about it, and then accrue charges.
{{% /notice %}}


:small_blue_diamond: Execute the commands below to cleanup all workshop resources:

```
cd /home/ec2-user/environment

./teardownWorkshop.sh 
```


