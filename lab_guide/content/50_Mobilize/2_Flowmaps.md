+++
title = " Flow Maps"
chapter = false
weight = 2
+++

![image](/images/mobilize/ad_team_architect.png)

## Navigate to the APM Application

Once you have logged into the AppDynamics controller, you should see the home page. Let's start by finding the pre-modernized version of the AD Financial APM (**App Performance Monitoring**) application and open it to investigate the flow map.

In the **Applications** tile, you should see the application named like **&lt;your_lab_user_name&gt;-AD-Fin-PreMod**

Click on the application name to drill into the flow map view for the application.


![image](/images/mobilize/open_apm_app.png)


## Application Level Flow Map

When you open the flow map for the application, you should see all the application components appear like you see in the image below.  Flow maps present a dynamic visual topology of the components and activities of your monitored application environment in direct context of the time frame you have selected.

AppDynamics APM agents automatically discover the components, frameworks, services, and dependencies that make up the application. Using intelligent automatic detection, agents collect application data and metrics to build flow maps.  AppDynamics automatically captures and scores every transaction. 

The will notice the layout of the icons on the flow map in your lab looks more like the first image below than the second image.  

**1 .**  Explore the automatic layout options highlighted on the top right.

- You can choose from the default time frames defined (going back a full year).
- You can also select the exact start and end time for a custom time frame.

**2 .**  Adjust the zoom level of the flow map using the slider on the left.

{{% notice note %}}
You can experiment with manually rearranging the icons on the flow map to your desired position.  Left-click (single-click) and drag each icon to place it where you want to.
{{% /notice %}}



![image](/images/mobilize/flowmap_topology_00.png)

### Key Features

Now let's look at some of the key features found on the flow map.

**1 .**  Change the time frame selector to see the state of the application at that time.

**2 .**  Health Rule Violations, Node Health issues, and the health of the Business Transactions will always show up in this area for the time frame you have selected. 

- You can click on the links available here to drill down to the details.

**3 .**  The Transaction Scorecard shows you the number and percentage of transactions that are normal, slow, very slow, stalled, and have errors. 

- The scorecard also gives you the high level categories of exception types. You can click on the links available here to drill down to the details.

**4 .**  The circles you see are service Tiers that represent a group of application Nodes that perform the same function.

- The number of Nodes depicted represent the number of service instances running under its Tier.

**5 .**  Flow lines represent connections between components on the flow map. 

- The numbers above the flow lines indicate the calls made per minute to the tier and the average time taken for the request to be serviced, the round-trip time for the request.

**6 .**  The three charts at the bottom of the dashboard show the time series for Load, Response Time, and Errors.

{{% notice info %}}
Notice that the **Loan Services Tier** is showing **high response times** for Database calls.
{{% /notice %}}

![image](/images/mobilize/flowmap_topology_01.png)

The Flow Map also gives you summary details within the context of the time frame you have selected for:

 - The response time:
   -  for the whole application
   -  for each service
   -  between each service
   -  to each dependency
 - The calls per minute:
   - for the whole application
   - for each service
   - between each service
   - to each dependency
 - The errors per minute:
   - for the whole application
   - for each service
   - between each service
   - to each dependency


**1 .**  Left-click (single-click) on any of the blue lines connecting the different application components to bring up an overview of the interactions between the two components.

**2 .**  Left-click (single-click) within the colored ring of a Tier to bring up detailed information about that Tier while remaining on the Flow Map.

**3 .**  Hover over the time series on one of the three charts at the bottom of the dashboard (Load, Response Time, Errors) to see the detail of the recorded metrics.


![image](/images/mobilize/flowmap_topology_02.png)


## Other Flow Map Views

The Flow Map view is also available for many levels and components within the application such as:

- Tiers
- Nodes
- Business Transactions
- Database Calls
- Remote Services

**1 .**  From the main application Flow Map, **left-click (double-click)** within the colored ring of the **AccountManagement Tier** to bring up the Flow Map for that Tier.

![image](/images/mobilize/flowmap_topology_03.png)


Once you're in the **Tier level Flow Map**, you can see that the view has changed to show only the related aspects of the **AccountManagement Tier**.  Notice that the other entities on the Flow Map are the ones directly interacting with the Tier.

**1 .**  Notice that the **Transaction Score Card** shows this Service Tier has a significant number of slow and very slow transactions.

**2 .**  Notice that the **Average Response Time** is fairly high for this Service Tier.

**3 .**  You can explore the **Node level Flow Map** by drilling in here.

![image](/images/mobilize/flowmap_topology_04.png)


## Here's the Advantage

- Flow Maps give you a real-time topological view of all the application components, services, and dependencies, and ..
- It's easy to see the Load, Response Times, and Error Rates, for each of these entities, at a glance.
- Flow Maps make it easy to drill down into the application components for deeper, more fine grained visiblilty.
- Having that current, up to date, understaning of the complete application topology and its performance aspects, helps your team construct a solid plan for a successful modernization project.


## Next <i class='fas fa-cog fa-spin'></i>

In the next section **we'll take a deeper dive into the performance issues** of the application and **understand which Key Business Transactions are having problems** and where Nathan and his team can **prioritize their modernization efforts**.



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
