# Case study - A/B testing

You are a newly hired journey analyst for one of the CX labs. Your job is to prepare a read out on a digital experiment that was run before you were hired. The experiment was designed as an A/B test with a measurement period of 3/15/2017 – 4/30/2017. Research conducted by the lab revealed a hypothesis: _a more modern UI and in-context prompts would make clients feel more comfortable with the process_. The team further believed that clients would complete the new process at a higher rate.
In the experiment, the control group was exposed to the current state experience while the test group saw a newly redesigned experience with improved UI, navigation, and in-line help. Both the test and control experiences have the same number of process steps (start page, steps 1-3, and then a confirm page, which indicates completion of the process).
You have been provided with `files_for_lab/abTesting.csv` file that contains information about the results from the experiment conducted.

## Objectives

As an analyst for the lab, your team has tasked you with understanding and explaining the performance of the experiment. These are some questions that you would want to answer.

- _How effective was the experiment design?_
- _How can the performance of the process be evaluated?_
- _What other data may be required and/or helpful to the analysis?_

## Metadata

Note: the data provided for this case study is fictitious and is only meant for the purposes of evaluating a candidate’s skill set.

Data field | Description |
--- | ---|
`client_id`  | Unique identifier of a client 
variation | Indicates whether the client was a part of the experiment 
`visitor_id` | Unique identifier of a client and device combination, determined by cookies, non-persistent cookies, IP address, and user agent 
`visit_id` | Unique identifier for a web visit/session (a visit is defined as a sequence of consecutive page views without a 30-minute break, or continuous activity for 30 minutes) 
`process_step` | The step in the digital process 
`date_time` | Date and time of page hit 
`clnt_tenure_yr` | The tenure of the client in years 
`clnt_tenure_mnth` | The tenure of the client in months 
`clnt_age` | The age of the client 
`gendr` | The gender of the client 
`num_accts` | The number of accounts the client has 
`bal` | The total balance of all accounts for the client 
`calls_6_mnth` | The number of times the client called within the last 6 months 
`logons_6_mnth` | The number of times the client logged on the website within the last 6 months 