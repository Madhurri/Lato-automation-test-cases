*** Settings ***
Library  Selenium2Library
Library  ExtendedSelenium2Library
Library  BuiltIn
Library  OperatingSystem
Library  Collections
Resource  /Users/eliga/PycharmProjects/LatoautomationbyRobotFramework/Resources/UserDefinedKeywords.robot
Resource  /Users/eliga/PycharmProjects/LatoautomationbyRobotFramework/Resources/VariableList.robot
*** keywords ***
*** Variables ***
*** Test Cases ***
FocusImage
  LoginToPage
  Sleep  2
  Mouse Over  xpath=//a[@id="goals"]
  Click Link  Goal Editor

  Wait Until Element Is Visible  xpath=//span[text()='1.']
  ${GoalText}     Get Text  xpath=//div[@data-value="1."]/table/tbody/tr

  ${TextBeforefocusing}=  Get Text  xpath=//div[starts-with(@id,'btn-')]  #img[@src="images/svg/focus-clear.svg"]
  Capture Page Screenshot
  Click Element  xpath=//div[@class="focusTd"]
  Sleep  2s
  Page Should Contain     ${TextBeforefocusing}  #xpath=//div[@class="focusTd"]
  LogoutFromThePage
  Close Browser
EditGoal
  LoginToPage
  Sleep  2
  Mouse Over  xpath=//a[@id="goals"]
  Sleep  2
  Click Link  Goal Editor
  Wait Until Element Is Visible  xpath=//span[starts-with(@id,'title_ed_')]
  Click Element  xpath=//span[starts-with(@id,'title_ed_')]
  Press Keys     xpath=//textarea[starts-with(@id,'NG-')]    CONTROL + ALT + DELETE
  Input Text  xpath=//textarea[starts-with(@id,'NG-')]   SeleniumLibrary is a web testing library for Robot Framework.
  Click Button  Save
  Sleep  3
  Click Element  xpath=//span[starts-with(@id,'title_ed_')]
  Wait Until Element Is Visible  xpath=//button[@onclick="preparePopup('action',4545029); "]
  Click Element  xpath=//button[@onclick="preparePopup('action',4545029); "]
  #Sleep  5
  Wait Until Element Is Visible  xpath=//div[@id="goalActionsData"]
  Click Element  xpath=//img[@id="priorityImgAction1" and @class="priorityImg"]
  Wait Until Element Is Visible  xpath=//span[@id="titleField1"]  #div[@id="goalActionsData"]

  Input Text  xpath=//textarea[@id="title1"]   This Goal should finnish in a month
  #Click Element  xpath=//input[@id="priorityImgAction1"]
  Wait Until Element Is Visible  xpath=//div[@class="dueRes-min"]
  Click Element  xpath=//input[@id="dueDatepicker1"]
  #Click Element  xpath=id[('game_list')/li[text()='THREE']
  Wait Until Element Is Visible  xpath=//div[@class="datepicker-panel"]/ul/li[text()='›']
  Click Element  xpath=//div[@class="datepicker-panel"]/ul/li[text()='›']
  Click Element  xpath=//ul[@data-view="months"]/li[text()='Nov']
  Wait Until Element Is Visible  xpath=//div[@class="open-min"]
  Input Text   xpath=//input[@id="progressAct1"]   30

  Wait Until Element Is Visible  xpath=//div/div[@class="custom-control custom-checkbox m-auto mb-3"]/input   #[@name="completeAct1"]

  Select Checkbox  xpath=//input[starts-with(@id,'completeAct')]    #name="completeAct1" ##LogoutFromThePage
  #Close Browser

