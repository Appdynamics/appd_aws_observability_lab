+++
title = "Servers and Containers"
chapter = false
weight = 4
+++

![image](/images/mobilize/ad_team_architect.png)

## Servers View

AppDynamics provides a correlated view of the servers or hosts that your application components are running on.  It's important to assess the current resource usage patterns of the infrastructure your application is running on to have an informed and accurate modernization plan.

Let's look at the host metrics of the server that our pre-modernized application is running on.

**1 .**  Click on the **Servers** option on the left menu.

**2 .**  Select the server you want to view the details of.

**3 .**  Click on the **View Details** button on the toolbar to open the server dashboard.

![image](/images/mobilize/servers_00.png)

<br>

Explore the server main dashboard where you can view charts of key performance metrics for the server, including:
- CPU, memory, and network usage percentages
- Server properties
- Disk, partition, and volume metrics
- Top 10 processes consuming CPU resources and memory
- See the overall health of the server, if any health rules have been violated

**1 .**  In this example, we'll look at a health rule violation for high CPU utilization

You can read more about the main Server dashboard [here](https://docs.appdynamics.com/display/latest/Server+Dashboard).

![image](/images/mobilize/servers_01.png)

{{% notice note %}}
There may not be a health rule violation in your own lab, so we are showing an example here.
{{% /notice %}}

You can read more about Alerts and Health Rules [here](https://docs.appdynamics.com/display/latest/Alert+and+Respond).

![image](/images/mobilize/servers_02.png)


### Processes View

Explore the Server Processes view where you can:

- View all the processes active during the selected time period
- Expand a process class to see the processes associated with that class
- Use View Options to configure which columns to display in the chart
- Change the time period of the metrics displayed
- Sort the chart using the columns as a sorting key
- See CPU and Memory usage trends at a glance

You can read more about the Server Processes dashboard [here](https://docs.appdynamics.com/display/latest/Server+Process+Metrics).

![image](/images/mobilize/servers_03.png)


### Volumes and Network Views

Explore the Volumes and Network views where you can:

- See in the list of volumes, the percentage used and total storage space available on the disk, partition or volume
- See disk usage and I/O utilization, rate, operations per second, and wait time
- See the MAC, IPv4, and IPv6 address for each network interface
- See whether or not the network interface is enabled, functional, its operational state equipped with an ethernet cable that is plugged in
- View network throughput in kilobytes/sec and packet traffic

You can read more about the Server Volumes dashboard [here](https://docs.appdynamics.com/display/latest/Server+Volumes+Metrics). 
You can read more about the Server Network dashboard [here](https://docs.appdynamics.com/display/latest/Server+Network+Metrics).

![image](/images/mobilize/servers_04.png)


## Containers View

The Containers view shows you a list of all the containers running on the server or host with the following details:

- Container Name, Hostname, and Id
- Image Id and Name
- Container Start Time
- CPU and Memory Utilization

**1 .**  Click on the **Containers** option to see the Containers View.

**2 .**  Double-click on one of the containers in the list to see more detail.

![image](/images/mobilize/servers_05.png)

<br>

Explore the details of an individual container.

You can read more about Container Metrics [here](https://docs.appdynamics.com/display/latest/Container+Metrics).

![image](/images/mobilize/servers_06.png)


## Here's the Advantage

- Get a clear and accurate understanding of the hosts and containers within the context of your application.
- Quickly understand the current and historical resource usage of the underlying infrastructure supporting your application.
- Having **an accurate record** of both **host and container resources** helps you **effectively plan for sizing requirements** when modernizing.


## Next <i class='fas fa-cog fa-spin'></i>

In the next section we'll gain deeper insights into **application performance from the end user perspective** with AppDynamics BRUM (**Browser Real User Monitoring**).


<!---
{{% notice warning %}}
The Cloud9 workspace should be built by an IAM user with Administrator privileges,
not the root account user. Please ensure you are logged in as an IAM user, not the root
account user.
{{% /notice %}}
-->

<!---
{{% notice info %}}
This workshop was designed to run in the **Oregon (us-west-2)** region. **Please don't
run in any other region.** Future versions of this workshop will expand region availability,
and this message will be removed.
{{% /notice %}}
-->

<!---
{{% notice tip %}}
Ad blockers, javascript disablers, and tracking blockers should be disabled for
the cloud9 domain, or connecting to the workspace might be impacted.
Cloud9 requires third-party-cookies. You can whitelist the [specific domains]( https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading).
{{% /notice %}}
-->
