
## Trevor Dean Abshire, M.S., CSCS, CPSS

My name is Trevor Abshire, I am an ex-collegiate starting pitcher, currently serving as Assistant Director of Sport Performance and Lead Data Analyst at the University of California Davis. With a strong passion for leveraging data to drive performance and optimize training strategies, I strive to blend my background in athletics with my analytical skills to deliver impactful insights.

My experience on the field, in the weight room, and in the lab have ignited a keen interest in exploring the vast potential of data analytics within the sports industry. Combining my expertise in strength and conditioning with my proficiency in data analytics, I aim to optimize training protocols, identify performance patterns, and provide valuable insights to athletes and coaches to increase longevity and win championships!

During my comprehensive biomechanics experience, I had the opportunity to delve into various domains, including pitching, powerlifting, gait analysis, jumping, and isolated joint kinematics. I have hands on experience with calibrating and capturing kinematic data from motion capture systems. I also have collected, cleaned, and analyzed various performance data to contribute to research and my own projects and professional endeavors. I was even a subject in a competitive deadlift case study!


[![Video Thumbnail](https://img.youtube.com/vi/K75-x8oRwc8/0.jpg)](https://youtu.be/K75-x8oRwc8)

[YouTube Link](https://youtu.be/K75-x8oRwc8)



Throughout my career, I have successfully applied data analytics techniques to analyze and interpret complex datasets, enabling evidence-based decision-making. I possess a strong foundation in various analytical tools and programming languages, including R, SQL, Excel/Sheets, and Tableau, allowing me to extract actionable insights from diverse datasets and communicate them effectively to stakeholders. I am currently taking a Python course from the University of Michigan which I am enjoying very much. 


In this portfolio, I showcase some of my projects, skills, and qualifications, demonstrating my ability to extract valuable insights from data and drive positive outcomes. I am excited to collaborate, share knowledge, and contribute to the field of data analytics in the context of sports and performance optimization.

Feel free to explore my portfolio and reach out for potential collaboration, discussion, or networking opportunities.

<h2>Master's Research</h2>

[Lower Extremity Asymmetries and their Relationship to Pitching Ball Velocity and Bat Handle Velocity in College Baseball Athletes](Portfolio/Masters_Capstone.pdf)


<h2>Athletic Data Projects (Clickable Dropdowns)</h2>

<details>
 <summary>Project 1: KinaTrax Pitching Data - Case Study</summary>
  <p>
    <ul>
      <li><strong>Objective:</strong> Analyze and interpret biomechanical and ball pitching data for performance and injury preventative purposes (Averages, Launch Angles, Spin Rates, Elbow Varus Torque).</li>
      <li><strong>Research:</strong> Pitching-related elbow injuries are commonly observed across various levels of baseball and are often attributed to the repetitive high-velocity throws, placing stress on structures such as the ulnar collateral ligament and radiohumeral articulation (Ciccotti et al., 2017; Melugin, Leafblad, Camp, & Conte, 2018; Saper et al., 2018; Anz et al., 2010; Chalmers et al., 2017). Early trunk rotation during the pitching delivery has shown to increase torques at the shoulder and elbow. However, the specific mechanisms of energy transmitting through the kinetic chain and into the medial elbow remain unclear. Understanding these mechanisms can provide useful information into optimizing pitching techniques and minimizing the risk of elbow injuries (Aguinaldo, Buttermore, & Chambers, 2007; Oyama et al., 2014; Aguinaldo & Chambers, 2009; Werner et al., 2002).</li>
    </ul>
 
  </p>
    <a href="https://www.tandfonline.com/doi/full/10.1080/14763141.2019.1696881">Induced power analysis of sequential body motion and elbow valgus load during baseball pitching, Sports Biomechanics</a>

<br>

  <p>
    <a href="https://github.com/ktrev123/Trevor-Abshire-Portfolio/blob/main/Portfolio/Project3_Rcode.R">R Code</a>
  </p>
  
  <ol>
    <li>Find the Fastball (Pitch_Type) velocity (Pitch_Velocity) mean and standard deviation for each pitcher that threw in the game on 8/2/2022 for Team 2.<br>
      <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/3ef3e150-6604-4d16-ae25-025476dd1574" alt="image" width="600"></li>
   <li>Find the Breaking Ball (Pitch_Type; Group Slider & Curveball together) spin rate (Spin_Rate) mean and standard deviation for each pitcher that threw in the game on 8/3/2022 for Team 1.<br>
      <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/ad9f4d42-6fc4-4ab3-adee-baec91b98338" alt="image" width="600"></li>
    <li>Rank the Pitchers (id_pitcher) who allowed the 15 hardest batted ball exit velocities (Exit_Velocity) above 10-degrees of launch (Launch_Angle) in any game.<br>
      What pitch type (Pitch_Type) was thrown to the batter on each hit?<br>
      What was the launch angle (Launch_Angle) on each hit?<br>
      What was the result of each play (Play_Result)?<br>
      Bullet-point up to 3 primary insights you can derive from this ranking.<br>
      <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/0ce92d3e-6075-4006-bd53-359594c04aa8" alt="image" width="600">
      <ul>
        <li>11 out of 15 (73%) of the hardest hit pitches were fastballs, suggesting that weaker contact could be influenced with off-speed pitches</li>
        <li>Launch angles between 10 and 26 degrees often presented desirable play results (Single/HomeRun) while launch angles greater than 30 resulted in outs</li>
        <li>If a hitter can achieve high exit velocities (>100mph), coaches might consider implementing practice drills where hitters are encouraged to attack the ball within 10 to 26 degrees of launch angle</li>
      </ul>
    </li>
    <li>Is there a statistically significant difference in mean Elbow Varus Torque at Max Shoulder External Rotation (Elb_Var_Torque_MER) between Pitchers (id_pitcher) 800021 and 800098? (α _< 0.05)<br>
      <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/444ae7f0-710f-456b-8cc5-a9af778099d9" alt="image" width="600"><br>
      <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/21cf649e-d896-421f-8d0c-2165bc202e06" alt="image" width="600"></li>  
    <li>Based on your findings from Question 4, provide further analysis on where you would recommend biomechanical intervention with either pitcher.<br>

   Pitcher21 and Pitcher98 show a statistically significant difference in elbow varus torque at maximal external rotation while having similar average fastball and breaking ball velocities (Pitcher21 = 92.02/81.04mph, Pitcher98 = 92.71/82.35mph). This suggests that further investigation into Pitcher98's biomechanical capabilities is necessary.
Considering the anatomical requirements of both the lower and upper extremities along with the trunk and pelvis during the pitching delivery at time of max external rotation, four upper extremity metrics, two lower, one thoracic, and one pelvic metric were correlated against elbow varus torque at max external rotation and pitch velocity within the entire pitching staff. One lower extremity and one thoracic variable of interest were identified to have a moderate negative correlation with elbow varus torque at max external rotation within the entire pitching staff: Trunk_Lean_MER (r = -0.47) and Lead_Ankle_EvInv_MER (r = -0.38). A statistical analysis was performed to identify if Pitcher98 had significantly different trunk lean and lead ankle positioning than the rest of the pitching staff. An independent, non-parametric, statistical test showed that Pitcher98 has statistically significant differences in both trunk lean and lead ankle positioning at max external rotation in comparison to the rest of the pitching staff.
While individual pitching mechanics are infinitely unique in nature, these findings suggest assessing the biomechanical capabilities of Pitcher98’s trunk and lead ankle. Pitcher98 would likely benefit from a complete and detailed analysis of the stability and mobility of the lead ankle joint and thoracic spine. Meanwhile, assessment of the capabilities of the external and internal rotator musculature of the shoulder as well as scapulohumeral rhythm could provide further insight to the force accepting capabilities of Pitcher98’s medial elbow. It is also advised to monitor throwing volume and intensity for Pitcher98 given that he is undergoing significantly higher medial elbow forces compared to his teammate.

      
   <div style="display: flex;">
        <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/42e553de-5c53-490c-8827-27de46869084" alt="image" width="350">
        <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/d5e3694b-f8d4-4a30-b5c7-b50535316605" alt="image" width="350">
      </div>
      <div style="display: flex;">
        <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/cb67f3d5-9e4c-4e3e-9f2e-9a805bf6fcf5" alt="image" width="350">
        <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/381dc685-8136-4f46-9b6e-f4ff245aa180" alt="image" width="350">
      </div>
    </li>
  </ol>
</details>
<details>
  <summary>Project 2: Force Platform Position Analysis</summary>
  <p>
    <ul>
      <li><strong>Objective:</strong> Analyze the performance and force production characteristics of starters from each position group using Vald ForceDecks force platforms.</li>
    </ul>
  </p>
  <p>
    <a href="https://github.com/ktrev123/Trevor-Abshire-Portfolio/blob/main/Portfolio/PositionBoxplot.R">R Code</a>
  </p>
 
  <div style="display:flex; justify-content:center;">
    <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/b712e95d-55d7-4f49-ab35-d682fd8e5376" alt="mRSI by Position" style="width:400px; margin-right:10px;">
    <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/ee483c44-aa63-4f5d-861a-7246e16c18f5" alt="Relative Peak Force by Position" style="width:400px;">
  </div>
  
  <ul>
    <li>Processed and cleaned a substantial dataset consisting of over 1000 data points, meticulously eliminating null values and detecting systematic outliers to ensure data integrity and quality</li>
    <li>Employed advanced R coding techniques to filter and segment the dataset based on position groups, enabling focused analysis and generating insightful visualizations tailored to specific groups</li>
    <li>Leveraged data analytics and statistical modeling in R to identify position groups that exhibited specific requirements for improved reactive and concentric strength, allowing for targeted training interventions and performance optimization strategies</li>
  </ul>
</details>

<details>
  <summary>Project 3: Asymmetry Assessment and Flagging</summary>
  <p>
    <ul>
      <li><strong>Objective:</strong> Develop a comprehensive assessment framework to evaluate asymmetries in the single leg jump test, considering peak landing force, and flag individuals at higher risk of injury, while providing strength and conditioning coaches a named list recommending potential exercise interventions for any athlete with a greater than 15% asymmetry in landing forces.</li>
      <li><strong>Research:</strong> Anterior cruciate ligament (ACL) tears are devastating injuries in professional athletes, affecting approximately 4% of players each year. Deceleration was found to be the most common injury maneuver, observed in 32 (60%) athletes. Defensive backs and wide receivers sustained the most injuries, with 14 (26%) and 12 (23%) cases, respectively. Out of all injuries, 44 (83%) were first-time ACL injuries, while nine (17%) had a history of previous ACL injury (Schick et al., 2023). Biomechanical studies have demonstrated that the greatest strain is placed on the ACL, relative to other knee ligaments, at low angles of knee flexion, typically around 15° (Schick et al., 2023; Johnson et al., 2019). As the degree of knee flexion increases, the ACL is off-loaded, and greater stress is placed on other knee ligaments (Schick et al., 2023; Williams et al., 2018).</li>
    </ul>
  </p>
    <a href="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9970728/">The Mechanism of Anterior Cruciate Ligament Injuries in the National Football League: A Systematic Video Review</a>
 
<br>


  <p>
    <a href="https://github.com/ktrev123/Trevor-Abshire-Portfolio/blob/main/Portfolio/SL_Jump.R">R Code</a>
  </p>
  
  <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/350cc536-0b0c-45aa-8945-abc935628d40" alt="Single Leg Jump Asymmetries" style="width:400px;">
  
  <ul>
    <li>Employed rigorous data cleaning techniques on a dataset comprising over 1000 data points, ensuring data integrity and quality</li>
    <li>Leveraged my expertise in human kinematics and understanding of football to identify eccentric landing capabilities as a relevant metric for analysis</li>
    <li>Developed a comprehensive data visualization showcasing the frequency of tests exhibiting different levels of asymmetry, providing valuable insights into the performance characteristics of the athletes</li>
  </ul>
</details>

<details>
  <summary>Project 4: Vertical Jump, Relative Concentric Peak Force, Bodyweight Visualization </summary>
  <p>
    <ul>
      <li><strong>Objective:</strong> Visualize the comparison between vertical jump combine data, force platform concentric peak force data, and bodyweights.</li>
  <li>
    <strong>Research:</strong> In a study examining the jumping and sprinting characteristics of a track and field team, researchers found that the force variable CMJ peak force relative to body weight was a significant predictor of sprint performance in terms of maximal running velocity over 10 meters and the time taken to complete 60 meters. Additionally, the maximal running velocity over 10 meters was also predicted by CMJ height. However, jump heights from non-stretch-shortening squat jumps and drop jumps did not predict sprint performances.
    Furthermore, previous research has shown that sprint acceleration over the first 10 meters from the starting block is correlated with CMJ average power, CMJ peak power, CMJ average force, and CMJ peak force in elite sprinters. This suggests that these force variables are relevant to sprint performance, particularly in terms of velocity components.
    The finding of this paper also indicate that specific adaptations related to velocity and increases in muscle electrical activity occur during CMJ exercises. This supports the suggestion that high-velocity muscle activation capabilities and the ability to perform activities at high velocities are important for sprinting at high velocities, often occurring for some positions in American Football.
    Studies have suggested that CMJ peak force and CMJ height are valuable factors in predicting sprint performances, especially in terms of velocity-related components. The ability to generate high forces and perform explosive movements at high velocities appears to be crucial for sprinting at high velocities.
</li>
    </ul>
  </p>
    <a href="https://pubmed.ncbi.nlm.nih.gov/22692108/">Markström, Jonas L.1; Olsson, Carl-Johan2. Countermovement Jump Peak Force Relative to Body Weight and Jump Height as Predictors for Sprint Running Performances: (In)homogeneity of Track and Field Athletes?</a>
<br>

  <p>
    <a href="https://github.com/ktrev123/Trevor-Abshire-Portfolio/blob/main/Portfolio/Project5_Unamed.py">Python Code </a>
  </p>

  
  <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/9cf54465-9066-4a0f-ba9f-80c201a22a38" alt="VJ_rCPF_BW" style="width:400px;">
  
  <img src="https://github.com/ktrev123/Trevor-Abshire-Portfolio/assets/138731104/475f3448-5578-438d-b76f-1be64854febc" alt="VJ_rCPF_BW2" style="width:400px;">
  <ul>
    <li>Filtered a significant dataset (2500 data points) to find instances where athletes possessed combine jump test values,force plateform CMJ values, and a bodyweight value.</li>
    <li>Created an interactive scatter plot to visualize the relevance of the Relative Concentric Peak Force metric within a Division 1 football program. </li>
  </ul>
</details>



<h2>General Coding Projects (Clickable Dropdowns)</h2>

<details>
  <summary>Project 5: Football Roster Web Scrape</summary>
  <p>
    <a href="https://github.com/ktrev123/Trevor-Abshire-Portfolio/blob/main/Portfolio/RosterWebsiteScrape.py">Python Code</a>
  </p>
  <ul>
    <li><strong>Objective:</strong> Scrape data from a roster website to create a standardized list of Names, Academic Years, Positions, and Roster Images for spreadsheet and dashboard use</li>
  </ul>
</details>


## Software/Coding Skills
  - R
  - SQL
  - Tableau
  - Excel/Sheets
  - Python
  - SPSS

## Performance Technologies
  - Vald ForceDecks
  - Vald ForceFrame
  - Vald NordBoard
  - Cortex Motion Capture
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
  - [Google Data Analytics Certificate](https://github.com/ktrev123/Trevor-Abshire-Portfolio/blob/main/Portfolio/Trevor_Abshire_Google_Data_Analytics_Certificate.pdf)
  - [Certified Strength and Conditioning Specialist](https://certificates.nsca.com/1f2cf9a0-1e9b-4211-beef-dd1277cbf97e#gs.2a323g)
  - [Certified Performance and Sport Scientist](https://certificates.nsca.com/cefcc200-5bd9-4352-bad9-fb8e8677ef4e#gs.2a32yo)
    

## Contact Information
- [tdabshire@ucdavis.edu](tdabshire@ucdavis.edu)
- [Visit my LinkedIn profile](https://www.linkedin.com/in/trevorabshire/)
