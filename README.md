
## Trevor Dean Abshire, M.S., CSCS, CPSS

My name is Trevor Abshire, I am an ex-collegiate starting pitcher, currently serving as Assistant Director of Sport Performance and Lead Data Analyst at the University of California Davis. With a strong passion for leveraging data to drive performance and optimize training strategies, I strive to blend my background in athletics with my analytical skills to deliver impactful insights.

As an ex-collegiate athlete, I understand the importance of data-driven decision-making in improving athletic performance. My experience on the field, in the weight room, and in the lab have ignited a keen interest in exploring the vast potential of data analytics within the sports industry. Combining my expertise in strength and conditioning with my proficiency in data analytics, I aim to optimize training protocols, identify performance patterns, and provide valuable insights to athletes and coaches to increase longevity and win championships!

During my comprehensive biomechanics experience, I had the opportunity to delve into various domains, including pitching, powerlifting, gait analysis, jumping, and isolated joint kinematics. I have hands on experience with calibrating and capturing kinematic data from motion capture systems. I also have collected, cleaned, and analyzed various performance data to contribute to research and my own projects and professional endeavors. I was even a subject in a competitive deadlift case study!


[![Video Thumbnail](https://img.youtube.com/vi/K75-x8oRwc8/0.jpg)](https://youtu.be/K75-x8oRwc8)

[YouTube Link](https://youtu.be/K75-x8oRwc8)



Throughout my career, I have successfully applied data analytics techniques to analyze and interpret complex datasets, enabling evidence-based decision-making. I possess a strong foundation in various analytical tools and programming languages, including R, SQL, Excel/Sheets, and Tableau, allowing me to extract actionable insights from diverse datasets and communicate them effectively to stakeholders. I am currently taking a Python course from the University of Michigan which I am enjoying very much. 


In this portfolio, I showcase some of my projects, skills, and qualifications, demonstrating my ability to extract valuable insights from data and drive positive outcomes. I am excited to collaborate, share knowledge, and contribute to the field of data analytics in the context of sports and performance optimization.

Feel free to explore my portfolio and reach out for potential collaboration, discussion, or networking opportunities.


<h2>Athletic Data Projects</h2>


### Project 1: KinaTrax Pitching Data - Case Study

- <span style="font-size: 14px;">Objective: Analyze and interpret biomechanical and ball pitching data for performance and injury preventative purposes <br> (Averages, Launch Angles, Spin Rates, Elbow Varus Torque)    </span>
- <span style="font-size: 14px;">Rearch: Pitching-related elbow injuries are commonly observed across various levels of baseball and are often attributed to the repetitive high velocity throws, placing stress on structures such as the ulnar collateral ligament and radiohumeral articulation (Ciccotti et al., 2017; Melugin, Leafblad, Camp, & Conte, 2018; Saper et al., 2018; Anz et al., 2010; Chalmers et al., 2017). Early trunk rotation during the pitching delivery has shown to increase torques at the shoulder and elbow. However, the specific mechanisms of energy transmitting through the kinteic chain and into the medial elbow remain unclear. Understanding these mechanisms can provide useful information into optimizing pitching techniques and minimizing the risk of elbow injuries (Aguinaldo, Buttermore, & Chambers, 2007; Oyama et al., 2014; Aguinaldo & Chambers, 2009; Werner et al., 2002).


[Induced power analysis of sequential body motion and elbow valgus load during baseball pitching, Sports Biomechanics](https://www.tandfonline.com/doi/full/10.1080/14763141.2019.1696881)
  
#### [R Code](Project3_Rcode)

1.Find the Fastball (Pitch_Type) velocity (Pitch_Velocity) mean and standard deviation for each pitcher that threw in the game on 8/2/2022 for Team 2.

 <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/4852adc4-633f-45d1-a272-3fe9c5af0952" alt="image" width="600">

2.Find the Breaking Ball (Pitch_Type; Group Slider & Curveball together) spin rate (Spin_Rate) mean and standard deviation for each pitcher that threw in the game on 8/3/2022 for Team 1.

 <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/1bd2dd57-5278-4966-99c8-b40bd4b6f0bc" alt="image" width="600">

3.Rank the Pitchers (id_pitcher) who allowed the 15 hardest batted ball exit velocities (Exit_Velocity) above 10-degrees of launch (Launch_Angle) in any game.<br>
What pitch type (Pitch_Type) was thrown to the batter on each hit?<br>
What was the launch angle (Launch_Angle) on each hit?<br>
What was the result of each play (Play_Result)?<br>
Bullet-point up to 3 primary insights you can derive from this ranking.

 <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/bb1824e8-79ba-404e-afc4-ee6b1df9032f" alt="image" width="600">

- 11 out of 15 (73%) of the hardest hit pitches were fastballs, suggesting that weaker contact could be influenced with off-speed pitches
- Launch angles between 10 and 26 degrees often presented desirable play results (Single/HomeRun) while launch angles greater than 30 resulted in outs
- If a hitter can achieve high exit velocities (>100mph), coaches might consider implementing practice drills where hitters are encouraged to attack the ball within 10 to 26 degrees of launch angle

4.Is there a statistically significant difference in mean Elbow Varus Torque at Max Shoulder External Rotation (Elb_Var_Torque_MER) between Pitchers (id_pitcher) 800021 and 800098? (α _< 0.05)

 To assess whether there is a significant difference in mean elbow varus torque at max shoulder external rotation between Pitcher21 and Pitcher98, a Shapiro-Wilk normality test was used to test the normality of the observations (p-value: Pitcher21 = 0.115, Pitcher98 = 0.7193) along with an F-test to assess variance equality (p-value = 0.0005546). Because the observations within both pitchers were normal and the variance between pitchers was unequal, a Welch's t-test was used and a p-value less than 0.001 (2e-16) was found, indicating that there is a statistically significant difference in mean elbow varus torque at max shoulder external rotation between Pitcher21 and Pitcher98.

<img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/bbb57ef3-c374-4f44-8a2c-7ef931868b65" alt="image" width="600">

<img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/8b111a22-a3bf-42c0-a7b4-62a9d679b42f" alt="image" width="600">

5.Based on your findings from Question 4, provide further analysis on where you would recommend biomechanical intervention with either pitcher.

 Pitcher21 and Pitcher98 show a statistically significant difference in elbow varus torque at maximal external rotation while having similar average fastball and breaking ball velocities (Pitcher21 = 92.02/81.04mph, Pitcher98 = 92.71/82.35mph). This suggests that further investigation into Pitcher98's biomechanical capabilities is necessary.
Considering the anatomical requirements of both the lower and upper extremities along with the trunk and pelvis during the pitching delivery at time of max external rotation, four upper extremity metrics, two lower, one thoracic, and one pelvic metric were correlated against elbow varus torque at max external rotation and pitch velocity within the entire pitching staff. One lower extremity and one thoracic variable of interest were identified to have a moderate negative correlation with elbow varus torque at max external rotation within the entire pitching staff: Trunk_Lean_MER (r = -0.47) and Lead_Ankle_EvInv_MER (r = -0.38). A statistical analysis was performed to identify if Pitcher98 had significantly different trunk lean and lead ankle positioning than the rest of the pitching staff. An independent, non-parametric, statistical test showed that Pitcher98 has statistically significant differences in both trunk lean and lead ankle positioning at max external rotation in comparison to the rest of the pitching staff.
While individual pitching mechanics are infinitely unique in nature, these findings suggest assessing the biomechanical capabilities of Pitcher98’s trunk and lead ankle. Pitcher98 would likely benefit from a complete and detailed analysis of the stability and mobility of the lead ankle joint and thoracic spine. Meanwhile, assessment of the capabilities of the external and internal rotator musculature of the shoulder as well as scapulohumeral rhythm could provide further insight to the force accepting capabilities of Pitcher98’s medial elbow. It is also advised to monitor throwing volume and intensity for Pitcher98 given that he is undergoing significantly higher medial elbow forces compared to his teammate.

<div style="display: flex;">
  <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/ad4622d5-d89c-4742-af9f-3bd4115adece" alt="image" width="350">
  <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/bcc80123-bb00-4bf8-af3f-736d4211e71a" alt="image" width="350">
</div>



<div style="display: flex;">
  <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/665b4900-804e-445d-89b6-478649cd14e9" alt="image" width="350">
  <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/ec8d25f6-b16d-4e8d-bff9-fe209bcf7355" alt="image" width="350">
</div>

### Project 2: Force Platform Position Analysis

- <span style="font-size: 14px; text-indent: 20px;">Objective:</span> Analyze the performance and force production characteristics of starters from each position group using Vald ForceDecks force platforms

#### [R Code](PositionBoxplot.R)
<div style="display:flex; justify-content:center;">
  <img src="mRSI_Position_Boxplot.png" alt="mRSI by Position" style="width:400px; margin-right:10px;">
  <img src="RelativePeakForce_Position_Boxplot.png" alt="Relative Peak Force by Position" style="width:400px;">
</div>

- Processed and cleaned a substantial dataset consisting of over 1000 data points, meticulously eliminating null values and detecting systematic outliers to ensure data integrity and quality
- Employed advanced R coding techniques to filter and segment the dataset based on position groups, enabling focused analysis and generating insightful visualizations tailored to specific groups
- Leveraged data analytics and statistical modeling in R to identify position groups that exhibited specific requirements for improved reactive and concentric strength, allowing for targeted training interventions and performance optimization strategies

### Project 3: Asymmetry Assessment and Flagging

- <span style="font-size: 14px;">Objective: Develop a comprehensive assessment framework to evaluate asymmetries in the single leg jump test, considering peak landing force, and flag individuals at higher risk of injury, while providing strength and conditioning coaches a named list recommending potential exercise interventions for any athlete with a greater than 15% asymmetry in landing forces
- Research: Anterior cruciate ligament (ACL) tears are devastating injuries in professional athletes, affecting approximately 4% of players each year. Deceleration was found to be the most common injury maneuver, observed in 32 (60%) athletes. Defensive backs and wide receivers sustained the most injuries, with 14 (26%) and 12 (23%) cases, respectively. Out of all injuries, 44 (83%) were first-time ACL injuries, while nine (17%) had a history of previous ACL injury (Schick et al., 2023). Biomechanical studies have demonstrated that the greatest strain is placed on the ACL, relative to other knee ligaments, at low angles of knee flexion, typically around 15° (Schick et al., 2023; Johnson et al., 2019). As the degree of knee flexion increases, the ACL is off-loaded, and greater stress is placed on other knee ligaments (Schick et al., 2023; Williams et al., 2018).

[The Mechanism of Anterior Cruciate Ligament Injuries in the National Football League: A Systematic Video Review](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9970728/)

</span>

#### [R Code](SL_Jump.R)
<img src="SL_Jump_BarChart.png" alt="Single Leg Jump Asymmetries" style="width:400px;">

- Employed rigorous data cleaning techniques on a dataset comprising over 1000 data points, ensuring data integrity and quality
- Leveraged my expertise in human kinematics and understanding of football to identify eccentric landing capabilities as a relevant metric for analysis
- Developed a comprehensive data visualization showcasing the frequency of tests exhibiting different levels of asymmetry, providing valuable insights into the performance characteristics of the athletes


<h2>General Coding Projects</h2>

  ### Project 4: Football Roster Web Scrape

  [Python Code](RosterWebsiteScrape.py)

- <span style="font-size: 14px;">Objective: Scrape data from a roster website to create a standardized list of Names, Academic Years, Positions, and Roster Images for spreadsheet and dashboard use    </span>




</details>

## Statistical and Visualization Software
  - R
  - SQL
  - Tableau
  - Excel/Sheets
  - SPSS

## Performance Technologies
  - Vald ForceDecks
  - Vald ForceFrame
  - Vald NordBoard
  - Hawkins Dynamics Force Platforms
  - EnodePro LPT
  - Catapult GPS
  - Kinexon GPS
  - 1080 Sprint
  
## Skills
  - Data cleaning and preprocessing
  - Exploratory data analysis
  - Data visualization
  - Statistical analysis and modeling
  - Data storytelling
  
## Certifications
  - [Google Data Analytics Certificate](Trevor_Abshire_Google_Data_Analytics_Certificate.pdf)
  - [Certified Strength and Conditioning Specialist](https://certificates.nsca.com/1f2cf9a0-1e9b-4211-beef-dd1277cbf97e#gs.2a323g)
  - [Certified Performance and Sport Scientist](https://certificates.nsca.com/cefcc200-5bd9-4352-bad9-fb8e8677ef4e#gs.2a32yo)
    

## Contact Information
- [tdabshire@ucdavis.edu](tdabshire@ucdavis.edu)
- [Visit my LinkedIn profile](https://www.linkedin.com/in/trevorabshire/)
