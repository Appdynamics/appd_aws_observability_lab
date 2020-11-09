+++
title = "Business Transactions"
chapter = false
weight = 3
+++

![image](/images/mobilize/ad_team_architect.png)

## The Value of Business Transactions

In AppDynamics **a business transaction represents the data processing flow for a request**, most often a user request. In real-world terms, many different components and dependencies in your application may interact to provide services to fulfill the following types of requests:

- In a financial application, operations such as applying for a loan, buying or selling stocks
- In an e-commerce application, a user searching for items, adding items to the cart, checking out
- In a content portal, a user requests content such as sports, business or entertainment news

AppDynamics orients performance monitoring around business transactions so you can **focus on the performance of your application components from the end user perspective**. You can quickly identify whether a component is readily available or if it is having performance issues. For instance, you can check whether users are able to log in, check out or view their data. You can see response times for users, and the causes of problems when they occur.

Let's look at the **performance of** the **key Business Transactions** to identify and **prioritize the ones that need refactoring** by following the steps below.

**1 .**  Click on the **Business Transactions** option on the left menu.

**2 .**  Notice the business transactions that have **the highest response times**.

**3 .**  Double-click on the **/rest/loanVerifyDocumentation** business transaction to get more detail about this transaction with high response times.

{{% notice info %}}
Notice that **five business transactions** related to **servicing loans** are **suffering with performance problems**.  This is **key to understanding** where we need to **focus our efforts** during our modernization effort.
{{% /notice %}}

![image](/images/mobilize/biz_txns_00.png)

<br>

Once you're in the **Business Transaction level Flow Map**, you can see that the view has changed to show only the related components and aspects of the **/rest/loanVerifyDocumentation** business transaction.  

**1 .**  Notice that the **AccountManagement Tier** is **showing the greatest amount of time spent** within this business transaction.

**2 .**  Click on the **Transaction Snapshots** tab to look at specific instances where this transaction was slow.

You can read more about Business Transactions [here](https://docs.appdynamics.com/display/latest/Business+Transactions).

![image](/images/mobilize/biz_txns_01.png)




## Transaction Snapshots

AppDynamics monitors and records every execution of a business transaction in the instrumented environment. However, for troubleshooting purposes, AppDynamics takes snapshots (containing deep diagnostic information) of specific instances of transactions that are having problems.

**1 .**  Click on the **Exe Time (ms)** column to sort the snapshots by the highest execution time.

**2 .**  Double-click on the Transaction Snapshot instance that **has the highest execution time**.

![image](/images/mobilize/biz_txns_02.png)

<br>

When the transaction snapshot viewer opens, you will see the flow map view of all the components that were part of this specific transaction. 

This snapshot shows the transaction traversed through the components below in order.

- The WebFrontEnd Tier
- The AccountManagement Tier
- The LoanServices Tier
- The MySQL Database

**1 .**  Click on the **Drill Down** button on the **AccountManagement Tier** shown on the Flow Map of the snapshot

![image](/images/mobilize/biz_txns_03.png)

<br>

The call graph view shows you the following details:

**1 .**  The method execution sequence shows the names of the classes and methods that participated in processing the business transaction on this node, in the order in which the flow of control proceeded.

**2 .**  For each method, you can see the time and percentage spent processing and the line number in the source code, enabling you to pinpoint the location in the code that could be affecting the performance of the transaction.

**3 .**  The call graph displays exit call links for methods that make outbound calls to other components such as database queries and web service calls.

You can read more about Call Graphs [here](https://docs.appdynamics.com/display/latest/Call+Graphs).

![image](/images/mobilize/biz_txns_04.png)

<br>


**1 .**  Click on the **HTTP link** to open the detail panel for the downstream call.

**2 .**  Click on the **Drill Down into Downstream Call** button.

![image](/images/mobilize/biz_txns_05.png)

<br>



The tab that opens shows the **call graph of the LoanServices Tier**. You can see that there was a **JDBC call to the database that caused issues** with the transaction.

**1 .**  Click on the **JDBC link** on the right to open the detail panel for the JDBC database call.

The detail panel for the JDBC database call **shows the specific query that took most of the time**. 

SQL Parameter Capture is turned off by default but [can be turned on](https://docs.appdynamics.com/display/latest/Call+Graph+Settings).


![image](/images/mobilize/biz_txns_06.png)

<br>


We can also **confirm if there were resource issues on the host** that could have impacted the transaction performance.

**1 .**  Click on the **Server** tab to see the resource usage within the context of the transaction.

You can read more about Transaction Snapshots [here](https://docs.appdynamics.com/display/latest/Transaction+Snapshots).
You can read more about troubleshooting slow transactions [here](https://docs.appdynamics.com/display/latest/Slow+Response+Times).

![image](/images/mobilize/biz_txns_07.png)


## Here's the Advantage

- Business Transactions focus on the performance of your application from the end user perspective.
- Business Transactions help you identify and prioritize aspects of the application to refactor and modernize.
- Transaction Snapshots make it easy to find the root cause within problem transactions.
- We've identified the **five loan servicing business transactions** are the transactions **we need to focus on and prioritize**.


## Next <i class='fas fa-cog fa-spin'></i>

In the next section we'll look at **the level of detail AppDynamics provides for Servers and the Containers** running on them.

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
