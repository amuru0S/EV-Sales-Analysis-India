# :red_car: Electric Vehicle Sales Analysis in India:red_car:
This Project is about conducting an extensive analysis on Electric vehicle sales of category 4-wheelers and 2-wheelers in India. This is one of Resume Project Challenges #12 from Codebasics.
Contains sales data of electric vehicles from various manufacturers and states.

:link:[Challenge Link](https://codebasics.io/challenge/codebasics-resume-project-challenge)
:bar_chart:[LIVE Dashboard](https://app.powerbi.com/groups/me/reports/f2a0248d-e481-4300-b132-4e67293c582c/b16fa5e69512a1aac55f?experience=power-bi)
:triangular_flag_on_post:[LinkedIn Post](https://codebasics.io/challenge/codebasics-resume-project-challenge)

## :memo:Table of Contents:
* Objective
* My Tasks
* Dataset Assessment
* Technologies Used 
* Data Model View
* Dashboard Overview
* Additional Calculated Metrics
* Key Learnings

## :dart:Objective: 
AtliQ Motors is an automotive giant from the USA specializing in electric vehicles (EV). In the last 5 years, their market share rose to 25% in electric and hybrid
vehicles segment in North America. As a part of their expansion plans, they wanted to launch their bestselling models in India where their market share is less than 2%. With the aid of in-depth analysis on how to enhance the competitiveness of the current market share within India’s rapidly evolving EV market.

## :pushpin:My Tasks:
As a data analyst, I was given sample data and a PDF outlining primary and secondary business questions. My responsibilities included:
* Designing relevant metrics based on the primary and secondary questions provided by the business stakeholders.
* Creating a dashboard that aligns with the stakeholder mock-up, ensuring clarity and ease of understanding.
* Identifying and presenting additional insights beyond the initial metrics and mock-up, incorporating extra data from my own research to strengthen my recommendations.

## :mag:Dataset Assessment:
Gaining a clear understanding of the available data is essential prior to analysis. Below is an overview:
* Dimension Table: Consists of static data related to dates and fiscal years.
* Fact Table: Contains sales data of electric vehicles from various manufacturers and states.
### dim_date
- date: Ranges from April 1, 2021, to March 1, 2024.
- fiscal_year: Atliq Motors fiscal year starts in April, so the enlisted FY's are from 2022 to 2024.
- quarter: Derived from the respective Fiscal Years.
### Electric Vehicle Sales by States
- Date: The date on which the monthly data recorded in the format of **DD-MMM-YY**.
- State: The name of the state within India, where the sales data is recorded.
- vehicle_category: Two types of vehicle categories which are 2-Wheeler and 4-Wheeler.
- electric_vehicles_sold: The number of electric vehicles sold in the specified state and category on the given date.
- total_vehicles_sold: The total number of vehicles (Electric and Non-electric) sold in the specified state and category on the given date.
### Electric Vehicle Sales by Makers
- Date: The date on which monthly sales data recorded.
- Vehicle Category: Two types of vehicle categories which are 2-Wheeler and 4-Wheeler.
- Maker: The name of the manufacturer of the electric vehicle.
- Electric Vehicles Sold: The number of electric vehicles sold by the specified maker in the given category on the given date.

## :hammer:Tools and Database Management system Used:
* Microsoft Excel - Received the dataset in CSV format. So microsoft excel is used for the prior cleanup and analysis.
* Microsoft Power BI - Used for data manipulation, data cleaning, writing new measures and mainly to create interactive reports and dashboards to make data-driven decisions through visualizations, data exploration, and advanced analytics.
* MySQL Server - created database for the dataset given and Queries are written to the Primary Research Questions from the stakeholders for better understanding of the data.

## 🗂️Data Model View:

<img width="638" alt="image" src="https://github.com/user-attachments/assets/15c2ce5f-b593-409f-8cc0-bcb223bc9e54" />

## :bar_chart:Dashboard Overview:

### :chart_with_upwards_trend:Home Page:
<img width="580" alt="image" src="https://github.com/user-attachments/assets/bba544eb-691a-4226-9a80-ec67be890e99" />

### :chart_with_upwards_trend:States Analysis View:
<img width="584" alt="image" src="https://github.com/user-attachments/assets/fa4399ad-183d-4405-bb9b-529103ec4222" />

### :chart_with_downwards_trend:Makers Analysis View:
<img width="584" alt="image" src="https://github.com/user-attachments/assets/eefae4f9-3986-4911-97c2-d6b6dc1c149f" />

## :muscle:Additional Calculated Metrics:
* Penetration Rate: This metric represents the percentage of total vehicles that are electric within a specific region or category. It is calculated as:
		Penetration Rate =  (Electric Vehicles Sold / Total Vehicles Sold) * 100  
   This indicates the adoption level of electric vehicles.
  
* Compound Annual Growth Rate (CAGR): CAGR measures the mean annual growth rate over a specified period longer than one year. It is calculated as:
		CAGR = [(Ending Value / Beginning Value) ** 1/n] -1

## :loudspeaker:Key Learnings:
* 







  
  





