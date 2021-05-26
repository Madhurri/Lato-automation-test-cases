*** Settings ***
Library  SeleniumLibrary
Library  ExtendedSelenium2Library
Library  BuiltIn
Library  OperatingSystem
Library  Collections
Resource  /Users/eliga/PycharmProjects/LatoautomationbyRobotFramework/Resources/UserDefinedKeywords.robot
Resource  /Users/eliga/PycharmProjects/LatoautomationbyRobotFramework/Resources/VariableList.robot
*** Variables ***
*** Keywords ***
*** Test Cases ***
CustomerExcellenceWithNoMetricType
   LoginToPage
   Sleep  3
   CustomerExcellence
   Wait Until Element Is Visible  xpath=//div[@id="goalDetails2"]
   Scroll Element Into View   xpath=//img[@id="priorityImg"]
   Click Element  xpath=//img[@id="priorityImg"]
   Click Link    Add new tag
   Wait Until Element Is Visible  xpath=//div[@id="goalDetails4_1"]
   Scroll Element Into View   xpath=//a[@title="Add URL"]
   Click Link   Add URL
   Input Text  xpath=//textarea[@id="link_url.1"]   https://www.hel.fi/helsinki/fi
   Input Text  xpath=//textarea[@id="link_txt.1"]   This text is created by automation
   Click Button  Save
   Click Button  Close
   Click Button  Yes
   Close Window

CustomerExcellenceWithBaseLineTargetMetricType
   LoginToPage
   Sleep  3
   CustomerExcellence
   Select From List by Label  xpath=//select[@id="metric_type"]    Numeric: baseline-target
   Scroll Element Into View   xpath=//img[@id="priorityImg"]     #a[@title="Add URL"]
   Wait Until Element Is Visible  xpath=//input[contains(@id,'indicator_1_title')]    #xpath=//table[@id="indicators"]/tr/tr[@id="indicator_1"]/td[2]
   Sleep  3s  #/ div[@id="indicators"]  #
   Input Text  xpath=//input[@id="indicator_1_title"]    Sales need to start in asia.
   Input Text  xpath=//input[@id="indicator_1_min"]   70
   Input Text  xpath=//input[@id="indicator_1_max"]   90
   Wait Until Element Is Visible  xpath=//input[contains(@id,'indicator_1_ach')]
   Input Text  xpath=//input[@id="indicator_1_ach"]   40
   Click Link   Add URL
   Input Text  xpath=//textarea[@id="link_url.1"]    https://www.hel.fi/helsinki/fi
   Input Text  xpath=//textarea[@id="link_txt.1"]    This text is created by automation
   Click Button   Save
   Click Button   Close
   Sleep  3s
   Click Button   Yes
   Close Window
   #Sleep  2

CustomerExcellenceWithOnOffMetricType
   LoginToPage
   Sleep  3
   CustomerExcellence
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
   GoalPriority
   GoalAdditionalInformation

CustomerExcellenceWithDescriptive
   LoginToPage
   Sleep  3
   CustomerExcellence
   Select From List by Label  xpath=//select[@id="metric_type"]   Descriptive
   Select From List by Label  xpath=//select[@id="desc_value"]   Not started
   GoalPriority
   GoalAdditionalInformation

CustomerExcellenceWithNoGoal
   LoginToPage
   Sleep  3
   CustomerExcellence
   Select From List by Label  xpath=//select[@id="metric_type"]   No Goal
   Input Text  xpath=//input[@id="achieve_no_goal"]  50
   GoalPriority
   GoalAdditionalInformation

GrowthOrProfitabilityWithNoStatus
   LoginToPage
   Sleep  3
   GrowthOrPrfitability
   GoalPriority
   GoalAdditionalInformation

GrowthOrProfitabilityWithBaseLineTarget
   LoginToPage
   Sleep  3
   GrowthOrPrfitability
   BaseLineTarget
   GoalPriority
   GoalAdditionalInformation

GrowthOrProfitabilityWithOnOffMetricType
   LoginToPage
   Sleep  3
   GrowthOrPrfitability
   OnOffMetricType
   GoalPriority
   GoalAdditionalInformation

GrowthOrProfitabilityWithDescriptiveMetricType
   LoginToPage
   Sleep  3
   GrowthOrPrfitability
   Select From List by Label  xpath=//select[@id="metric_type"]   Descriptive
   Select From List by Label  xpath=//select[@id="desc_value"]   Not started
   GoalPriority
   GoalAdditionalInformation

GrowthOrProfitabilityWithNoGoalMetricType
   LoginToPage
   Sleep  3
   GrowthOrPrfitability
   Select From List by Label  xpath=//select[@id="metric_type"]   No Goal
   Input Text  xpath=//input[@id="achieve_no_goal"]  50
   GoalPriority
   GoalAdditionalInformation

ProcessExcellenceWithNoGoal
   LoginToPage
   Sleep  3
   ProcessExcellence
   GoalPriority
   GoalAdditionalInformation

ProcessExcellenceWithBaseLineTarget
   LoginToPage
   Sleep  3
   ProcessExcellence
   BaseLineTarget
   GoalPriority
   GoalAdditionalInformation

ProcessExcellenceWithDescriptiveMetricType
   LoginToPage
   Sleep  3
   ProcessExcellence
   Select From List by Label  xpath=//select[@id="metric_type"]   Descriptive
   Select From List by Label  xpath=//select[@id="desc_value"]   Not started
   GoalPriority
   GoalAdditionalInformation

ProcessExcellenceWithNoGoalMetricType
   LoginToPage
   Sleep  3
   ProcessExcellence
   Select From List by Label  xpath=//select[@id="metric_type"]   No Goal
   Input Text  xpath=//input[@id="achieve_no_goal"]  50
   GoalPriority
   GoalAdditionalInformation


WinningTeamWithNoGoal
   LoginToPage
   Sleep  3
   WinningTeam
   GoalPriority
   GoalAdditionalInformation

WinningTeamWithBaseLineTarget
   LoginToPage
   Sleep  3
   WinningTeam
   BaseLineTarget
   GoalPriority
   GoalAdditionalInformation

WinningTeamWithDescriptiveMetricType
   LoginToPage
   Sleep  3
   WinningTeam
   Select From List by Label  xpath=//select[@id="metric_type"]   Descriptive
   Select From List by Label  xpath=//select[@id="desc_value"]   Not started
   GoalPriority
   GoalAdditionalInformation

WinningTeamWithNoGoalMetricType
   LoginToPage
   Sleep  3
   WinningTeam
   Select From List by Label  xpath=//select[@id="metric_type"]   No Goal
   Input Text  xpath=//input[@id="achieve_no_goal"]  50
   GoalPriority
   GoalAdditionalInformation
