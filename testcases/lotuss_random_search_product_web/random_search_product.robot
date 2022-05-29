*** Settings ***
Resource  ../import.robot
Documentation  Example command to execute: robot -v ENV:qa -v LANG:th
Suite Teardown  close browser

*** Test Cases ***
TC-WEB-001 Random search product items - Success
  [Documentation]  For user able to search with random number in online shopping website
  [Tags]  acceptance  integration
  user open lotuss login home page
  # web should display search bar and able to random search