*** Settings ***
Resource  Resources/VariableList.robot

*** Keywords ***
LoginToPage
  Open Browser  ${URL}  ${Browser}
  Input Text  //*[@id="p_user_name"]   xxxxx
  Input Text  //*[@id="p_user_pwd"]   xxxxx
  Click button  Login

LogoutFromThePage
    Click Link  xpath=//a[@id="logOut"]
    Sleep  2
    Wait Until Element Is Visible  xpath=//div[@aria-labelledby="logOut"]
    Click Link   Logout

CustomerExcellence
   Wait Until Element Is Visible  xpath=//div[@id="navbarCollapse"]
   Click Element  xpath=//div[@onclick="prepareNewGoalPopup(0,'New');"]
   Wait Until Page Contains Element  xpath=//form[@id="GoalDetailsForm"]  #select[@id="New_identifier"]     path=div[@id="popup"]
   Wait Until Element Is Visible  xpath=//div[@id="goalDetails1"]
   Sleep  2
   Select From List by Label  xpath=//select[@id="bsc_dimension"]    Customer Excellence
   Input Text  xpath=//textarea[@id="title"]   This goal text is done by automation.
   Input Text  xpath=//textarea[@id="description"]    Robot Frameworkin kehitys alkoi Pekka Klärckin diplomityöstä[1] vuonna 2005. Ensimmäinen versio kehitettiin samana vuonna Nokia Networksilla. Versio 2.0 julkaistiin avoimena lähdekoodina 24.
   Input Text  xpath=//textarea[@id="timetable"]     30% finished.
   Input Text  xpath=//textarea[@id="assessment_description"]   This text created with automation testing.
GoalPriority
   Click Element  xpath=//img[@id="priorityImg"]
   Click Link    Add new tag
GoalAdditionalInformation
   Wait Until Element Is Visible  xpath=//div[@id="goalDetails4_1"]
   Scroll Element Into View   xpath=//a[@title="Add URL"]
   Click Link   Add URL
   Input Text  xpath=//textarea[@id="link_url.1"]   https://www.hel.fi/helsinki/fi
   Input Text  xpath=//textarea[@id="link_txt.1"]   Robot Framework is a generic open source automation framework. It can be used for test automation and robotic process automation
   Click Button  Save
   Click Button  Close
   Sleep  2s
   Click Button  Yes
   Close Window
GrowthOrPrfitability
   Wait Until Element Is Visible  xpath=//div[@id="navbarCollapse"]
   Click Element  xpath=//div[@onclick="prepareNewGoalPopup(0,'New');"]
   Wait Until Page Contains Element  xpath=//form[@id="GoalDetailsForm"]
   Wait Until Element Is Visible  xpath=//div[@id="goalDetails1"]
   Sleep  2
   Select From List by Label  xpath=//select[@id="bsc_dimension"]    Growth/Profitability
   Input Text  xpath=//textarea[@id="title"]   This goal text is done by automation.
   Input Text  xpath=//textarea[@id="description"]    Robot Frameworkin kehitys alkoi Pekka Klärckin diplomityöstä[1] vuonna 2005. Ensimmäinen versio kehitettiin samana vuonna Nokia Networksilla. Versio 2.0 julkaistiin avoimena lähdekoodina 24.
   Input Text  xpath=//textarea[@id="timetable"]     30% finished.
   Input Text  xpath=//textarea[@id="assessment_description"]   This text created with automation testing.
BaseLineTarget
   Select From List by Label  xpath=//select[@id="metric_type"]    Numeric: baseline-target
   Scroll Element Into View   xpath=//img[@id="priorityImg"]
   Wait Until Element Is Visible  xpath=//input[contains(@id,'indicator_1_title')]
   Sleep  3s
   Input Text  xpath=//input[@id="indicator_1_title"]    Sales need to start in asia.
   Input Text  xpath=//input[@id="indicator_1_min"]   70
   Input Text  xpath=//input[@id="indicator_1_max"]   90
   Wait Until Element Is Visible  xpath=//input[contains(@id,'indicator_1_ach')]
   Input Text  xpath=//input[@id="indicator_1_ach"]   40
OnOffMetricType
   Select From List by Label  xpath=//select[@id="metric_type"]    On-Off
   Scroll Element Into View   xpath=//img[@id="priorityImg"]
   Wait Until Element Is Visible  xpath=//label[@class="custom-control ios-switch"]
   Sleep  3s
   Page Should Contain   Bigger is better
   Click Element   xpath=//label[@class="custom-control ios-switch"]
   Page Should Contain  Smaller is better
   Input Text  xpath=//input[@id="ivl_target"]  90
   Input Text  xpath=//input[@id="ivl_achieve"]   70
   Page Should Contain  On

ProcessExcellence
   Wait Until Element Is Visible  xpath=//div[@id="navbarCollapse"]
   Click Element  xpath=//div[@onclick="prepareNewGoalPopup(0,'New');"]
   Wait Until Page Contains Element  xpath=//form[@id="GoalDetailsForm"]  #select[@id="New_identifier"]     path=div[@id="popup"]
   Wait Until Element Is Visible  xpath=//div[@id="goalDetails1"]
   Sleep  2
   Select From List by Label  xpath=//select[@id="bsc_dimension"]    Process Excellence
   Input Text  xpath=//textarea[@id="title"]   This goal text is done by automation.
   Input Text  xpath=//textarea[@id="description"]    Robot Frameworkin kehitys alkoi Pekka Klärckin diplomityöstä[1] vuonna 2005. Ensimmäinen versio kehitettiin samana vuonna Nokia Networksilla. Versio 2.0 julkaistiin avoimena lähdekoodina 24.
   Input Text  xpath=//textarea[@id="timetable"]     30% finished.
   Input Text  xpath=//textarea[@id="assessment_description"]   This text created with automation testing.

WinningTeam
   Wait Until Element Is Visible  xpath=//div[@id="navbarCollapse"]
   Click Element  xpath=//div[@onclick="prepareNewGoalPopup(0,'New');"]
   Wait Until Page Contains Element  xpath=//form[@id="GoalDetailsForm"]  #select[@id="New_identifier"]     path=div[@id="popup"]
   Wait Until Element Is Visible  xpath=//div[@id="goalDetails1"]
   Sleep  2
   Select From List by Label  xpath=//select[@id="bsc_dimension"]    Winning Team
   Input Text  xpath=//textarea[@id="title"]   This goal text is done by automation.
   Input Text  xpath=//textarea[@id="description"]    Robot Frameworkin kehitys alkoi Pekka Klärckin diplomityöstä[1] vuonna 2005. Ensimmäinen versio kehitettiin samana vuonna Nokia Networksilla. Versio 2.0 julkaistiin avoimena lähdekoodina 24.
   Input Text  xpath=//textarea[@id="timetable"]     30% finished.
   Input Text  xpath=//textarea[@id="assessment_description"]   This text created with automation testing.


