## Event Logs Profiling

 A data profile toolkit aiming to analyse the characteristics of event logs in research.


#### Event Logs

An event log records business events from process-aware information systems (PAIS). Typically, event logs describe the interchanges of on-going process events between information systems or applications, such as start and completion of activities, their ordering, resources which executed them and the process instance they belong to.

##### Toy Example

A fragment of real-world event logs from Volvo IT incident management system is shown in the following table.


|Case ID    | Activity                    |Resource     | Timestamps         | org:group|
|:---------:|:---------------------------:|:-----------:|:------------------:|:--------:|
|1-364285768| Accepted + In Progress      | Frederic    | 01.04.2010 0:59:42 | V30      |
|1-364285768| Accepted + In Progress      | Frederic    | 01.04.2010 1:00:56 | V30      |
|1-364285768| Queued + Awaiting Assignment| Frederic    | 01.04.2010 1:45:48 | V5 3rd   |
|1-364285768| Accepted + In Progress      | Anne Claire | 07.04.2010 0:44:07 | V5 3rd   |
| ...       | ...                         | ...         | ...                | ...      |
|1-364285768| Accepted + Assigned         | Sarah       | 12.04.2012 1:11:25 | V5 3rd   |
|1-364285768| Accepted + In Progress      | Loic        | 03.05.2012 19:10:10| V5 3rd   |
|1-364285768| Completed + Resolved        | Loic        | 03.05.2012 19:10:12| V5 3rd   |
|1-364285768| Completed + Closed          | Siebel      | 11.05.2012 9:26:15 | V5 3rd   |
| ...       | ...                         | ...         | ...                | ...      |

- Each row of an event log represents an execution of process event in the whole system. 
- For a standard event log, it requires at least three elements in each row, which contain a unique identifer for the case of current event (e.g., Case ID), a name or an identifer for the activity of current event (e.g., Activity) and an execution time of current event (e.g., Timestamps). 
- Some extra attributes are also included in the event logs such as resource name or identifer (e.g., Resource) and resource group information (e.g., org:group) , which are associated with the execution of corresponding event.

##### Format

- **IEEE XES** is a standard format based on XML schema for describing systems behaviors by means of event logs and event streams. For more information about the format, please refer to [IEEE 1849-2016 XES Standard](https://www.xes-standard.org/).

- Apart of XES format, a lot of event logs are actually stored in a **CSV file**.

##### Tools

Since widely used in process mining discipline, most of process mining softwares and tools can handle the event logs. For more information about the process mining softwares, please check [Process Mining Software Comparasion](https://www.processmining-software.com/). 

##### Datasets

Several real event logs have been made available in [4TU.ResearchData](https://data.4tu.nl/) over the past few years. Here list some popular datasets for research.

- [HelpDesk](https://mendeley.figshare.com/articles/dataset/Helpdesk/8951084)
- [Sepsis Cases](https://data.4tu.nl/articles/dataset/Sepsis_Cases_-_Event_Log/12707639)
- [Hospital Billing](https://data.4tu.nl/articles/dataset/Hospital_Billing_-_Event_Log/12705113)
- BPI Challenge
    - [BPIC'11](https://data.4tu.nl/articles/dataset/Real-life_event_logs_-_Hospital_log/12716513/1): Hospital Log
    - [BPIC'12](https://data.4tu.nl/articles/dataset/BPI_Challenge_2012/12689204): Dutch Financial Institute
    - [BPIC'13](https://data.4tu.nl/collections/BPI_Challenge_2013/5065448): Volvo Incident and Problem Management
    - [BPIC'14](https://data.4tu.nl/collections/BPI_Challenge_2014/5065469): IT Service Desk
    - [BPIC'15](https://data.4tu.nl/collections/BPI_Challenge_2015/5065424): Dutch Building Permit Application
    - [BPIC'16](https://data.4tu.nl/collections/BPI_Challenge_2016/5065538): Employee Insurance Customer Journey
    - [BPIC'17](https://data.4tu.nl/articles/dataset/BPI_Challenge_2017/12696884) [[Subset]](https://data.4tu.nl/articles/dataset/BPI_Challenge_2017_-_Offer_log/12705737): Same with BPIC'12, Dutch Financial Institute
    - [BPIC'18](https://data.4tu.nl/articles/dataset/BPI_Challenge_2018/12688355): German Farmers
    - [BPIC'19](https://data.4tu.nl/articles/dataset/BPI_Challenge_2019/12715853/1): Order Management
    - [BPIC'20](https://data.4tu.nl/collections/BPI_Challenge_2020/5065541): TU/e Travel Permit Application 

#### Analysis

##### Domain

##### Characteristic

