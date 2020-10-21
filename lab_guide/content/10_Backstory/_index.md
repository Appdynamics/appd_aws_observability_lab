+++
title = "Backstory"
chapter = true
weight = 10
+++

![image](/images/the_backstory/ad_financial_logo_lrg.png)

AD Financial serves its customers with a full range of financial products and services through award-winning digital banking capabilities and a retail banking network across the globe with a focus on helping individuals navigate each stage of their financial lives, working with  large and small businesses to drive their success by providing award-winning service.

![image](/images/the_backstory/ad_financial_web.png)

AD Financial recently experienced a data breech in their online application, and while the breech was minimized, the source of the breech was never determined due to lack of granularity in the stored audit data.  The need for a replicated audit trail, containing every piece of data accessed, became immediately apparent as well as some of the challenges associated with it.

* Retention limits in the database
* Database ingestion and replication was too slow
* Need for security at the speed of production

With the recent surge in home mortgage refinancing and small business loans, AD Financial has recognized slower loan processing times.  An initial assessment of the current loan processing services revealed several challenges ahead to meet the increasing demand.

* Both personal and business loan processing services are tightly coupled
* Coarse grained loan processing services slows innovative code changes
* Further assessment is needed to determine the right level of uncoupling
* Current container services lack orchestration and scalability features

Avi is the Chief Technology Officer (CTO) for AD Financial and has tasked his team leads to assess the following challenges associated with their modernization effort.

![image](/images/the_backstory/ad_team_cto.png)



## 1: Understand the Current Application

It has been over a year since the Dev team refactored the online application, containerized services and moved them out of the data center into the cloud.  There is no current architecture diagram for the application though many changes have been made since its original deployment. An accurate assessment of the items below are required so the team can create a viable modernization plan:

1.	Inventory of all application components, the hosts they run on, and the technologies in use
2.	Inventory of all dependencies across service APIs
3.	Inventory of all dependencies to backends and third-party systems
4.	Inventory of all the teams associated with the different application components 

## 2: Understand Key Business Transactions

Once we have an inventory of the application components, services, and dependencies, we need to understand what the key business transactions are in the application and the components they map to so we can prioritize them for refactoring during our modernization effort.  For example, what are the transactions that access sensitive data and require auditing?  What transactions are associated with loan processing that would be candidates for refactoring when decoupling those services? To answer those questions, we need to understand the following:

1.	What are the key business transactions associated with services we want to refactor?
2.	The path those transactions take through the system with all components involved to map them out from start to finish.
3.	Where those key business transactions exist in the end user journey map?
4.	How would other business transactions be impacted by refactoring the key business transactions?


## 3: Select Modernization Technologies and Scope

With so many new cloud services and technologies available today, it is difficult to qualify the ones that will not only satisfy the business and engineering requirements but also promote fast adoption across the different teams involved in the modernization effort without imposing a huge learning curve.

To that end, the appropriate level of scope must also be identified to ensure the modernization project milestones and timelines are achieved.  Avis team has narrowed the scope of this modernization project to adopt two new AWS services.

1.	A container orchestration solution that can automate the process of scaling, managing, updating, and removing containers.
2.	A storage solution for audit data that is secure, can scale, has redundancy, and supports high ingestion rates.

AWS offers multiple services for container orchestration and for storage and after assessing the features of the services available, the team made a final decision on the two services that would best meet their technical and business requirements.  

<br>

:small_blue_diamond: **Container Orchestration Winner!**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='fa fa-check-square'></i> **Elastic Kubernetes Service (EKS)**

<br>

:small_blue_diamond: **Storage Solution Winner!**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='fa fa-check-square'></i> **Simple Storage Service (S3)**

<br>


## 4: Baseline Performance and End User Experience

Validating the success of our modernization effort will be next to impossible without having an accurate understanding of what the performance and end user experience measurements are for the application, both pre-modernization and post-modernization.  Our CTO Avi, has recommended that we capture baseline data on the following indicators for the application, both pre and post modernization to validate our success:

1.	Overall end-user experience online
2.	Business transaction performance
3.	Component and service level performance
4.	Conversion rate in online user journeys

Consolidating metrics from the siloed tools currently in use by the teams at various layers of the application takes too much time and effort and doesn’t scale well.  The current tools have no way of providing an end to end view of the entire application stack in its current form, nor would they give any visibility into the native cloud services like S3 and EKS.  Current tools also lack any capability of automatic baselines for performance and end user experience, at the application, business transaction, service, and component level.

## 5: Minimize Operational Risk

Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco


