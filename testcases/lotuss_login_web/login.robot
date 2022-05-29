*** Settings ***
Resource  ../import.robot
Documentation  Example command to execute: robot -v ENV:qa -v LANG:th
Suite Teardown  close browser

*** Test Cases ***
TC-WEB-001 Login online shopping - Success
  [Documentation]  For user access to login online shopping website
  [Tags]  acceptance  integration
  user open lotuss login home page
  web should display and validate login page
  web should be display and validate register page
  web should be navigated to home page and show message login successfully