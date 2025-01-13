# :red_car: Electric Vehicle Sales Analysis in India:red_car:
This Project is about conducting an extensive analysis of Electric vehicle sales of category 4-wheelers and 2-wheelers in India. This is one of Resume Project Challenges #12 from Codebasics.
Contains sales data for electric vehicles from various manufacturers and states.

:bar_chart:[LIVE Dashboard](https://app.powerbi.com/groups/me/reports/f2a0248d-e481-4300-b132-4e67293c582c/b16fa5e69512a1aac55f?experience=power-bi&bookmarkGuid=209d82135b22b76484e3)
:triangular_flag_on_post:[LinkedIn Post](https://codebasics.io/challenge/codebasics-resume-project-challenge)
:link:[Challenge Link from Codebasics](https://codebasics.io/challenge/codebasics-resume-project-challenge)

## :memo:Table of Contents:
* Objective
* My Tasks
* Dataset Assessment
* Technologies Used 
* Data Model View
* Dashboard Overview
* Calculated Metrics Used for creating measures
* Key Learnings

## :dart:Objective: 
AtliQ Motors is an automotive giant from the USA specializing in electric vehicles (EV). In the last 5 years, their market share rose to 25% in electric and hybrid
vehicles segment in North America. As a part of their expansion plans, they wanted to launch their bestselling models in India where their market share is less than 2%. 
With in-depth analysis on enhancing the competitiveness of the current market share within India’s rapidly evolving EV market, they will achieve their target.

## :pushpin:My Tasks:
As a data analyst, I was provided with sample data, dashboard Mockup, and primary & secondary questions by Stakeholders. My responsibilities included:
* Developing appropriate metrics tailored to the primary and secondary business questions.  
* Building a dashboard that closely matches the stakeholder-provided mock-up, ensuring intuitive visualization and comprehensibility.  
* Discovering and sharing supplementary insights beyond the outlined metrics and mock-up, integrating external data obtained through independent research to enhance the overall recommendations. 

## :mag:Dataset Assessment:
Gaining a clear understanding of the available data is essential before analysis. Below is an overview:
* Dimension Table: Consists of static data related to dates and fiscal years.
* Fact Table: Contains sales data of electric vehicles from various manufacturers and states.
### dim_date
- date: Ranges from April 1, 2021, to March 1, 2024.
- fiscal_year: Atliq Motor's fiscal year starts in April, so the enlisted FYs are from 2022 to 2024.
- quarter: Derived from the respective Fiscal Years.
### Electric Vehicle Sales by States
- Date: The date on which the monthly data is recorded in the format of **DD-MMM-YY**.
- State: The name of the state within India, where the sales data is recorded.
- vehicle_category: Two types of vehicle categories which are 2-Wheeler and 4-Wheeler.
- electric_vehicles_sold: The number of electric vehicles sold in the specified state and category on the given date.
- total_vehicles_sold: The total number of vehicles (Electric and Non-electric) sold in the specified state and category on the given date.
### Electric Vehicle Sales by Makers
- Date: The date on which monthly sales data is recorded.
- Vehicle Category: Two types of vehicle categories which are 2-wheeler and 4-wheeler.
- Maker: The name of the manufacturer of the electric vehicle.
- Electric Vehicles Sold: The number of electric vehicles sold by the specified maker in the given category on the given date.

## :hammer:Tools and Database Management system Used:
* Microsoft Excel - Received the dataset in CSV format. So Microsoft Excel is used for the prior cleanup and analysis.
* Microsoft Power BI - Used for data manipulation, data cleaning, and to creation of interactive reports and dashboards to make data-driven decisions through visualizations, data exploration, and advanced analytics.
* DAX - For advanced data calculations and metrics.
* MySQL Server - Used for database creation and writing Queries for Primary Research Questions from the stakeholders for a better understanding of the data.
* Power Point - For presenting clear insights to the stakeholders.

## 🗂️Data Model View:

<img width="638" alt="image" src="https://github.com/user-attachments/assets/15c2ce5f-b593-409f-8cc0-bcb223bc9e54" />

## :bar_chart:Dashboard Overview:

### :chart_with_upwards_trend:Home Page:
<img width="578" alt="image" src="https://github.com/user-attachments/assets/51064831-b901-456e-8123-577fe7506915" />

### :chart_with_upwards_trend:States Analysis View:
<img width="584" alt="image" src="https://github.com/user-attachments/assets/c6fb9c77-2478-4322-8f26-60b0f05dec58" />

### :chart_with_downwards_trend:Makers Analysis View:
<img width="584" alt="image" src="https://github.com/user-attachments/assets/e5bcbdca-3e13-4169-9a1a-c3d644e7a577" />

### :chart_with_downwards_trend:Statewise Comparision View:
<img width="583" alt="image" src="https://github.com/user-attachments/assets/e41f6b11-6aee-4a8d-9c54-a26f7885fe7a" />

### :chart_with_downwards_trend:Filter Panel:
<img width="587" alt="image" src="https://github.com/user-attachments/assets/e9e5bdf5-df67-4c0b-bd8f-87c41a202530" />

## :muscle:Calculated Metrics Used:
* Penetration Rate: This metric represents the percentage of electric vehicles within a specific region or category. It is calculated as:
		Penetration Rate =  (Electric Vehicles Sold / Total Vehicles Sold) * 100  
   This indicates the adoption level of electric vehicles.
  
* Compound Annual Growth Rate (CAGR): CAGR measures the mean annual growth rate over a period longer than one year. It is calculated as:
		CAGR = [(Ending Value / Beginning Value) ** 1/n] -1

## :loudspeaker:Key Learnings:
* Created reports using Top N Slicers, Filters, Clustered Column charts, Line and Clustered Column charts, Donut/Pie charts, buttons, and shapes.
* Performed dynamic ranking (top/bottom filtration with Top-N Slicer) on the Sales by State and Makers page.
* Created Show/Close Filter Panel which provides the full view of the dashboards without any hindrance.
* Bookmarks and selection options are used to navigate reports and pages across States and Makers.
* Tooltips are used for all the icons and better visualizations of the Statewise Comparison View.
* Page, visualization, and report filters are applied throughout the data.
* Categorized the measures into folders and subfolders for all the Key measures.
* Did a lot of research for choosing the appropriate color palette to maintain the consistency of the reports for the pleasant yet eye-catching dashboards.
* Prepared PowerPoint Presentation to present better insights on the project to the Stakeholders.
