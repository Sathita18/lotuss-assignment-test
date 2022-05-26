*** Settings ***
Resource  ../import.robot
Resource  ../keywords/common/common_keywords.robot
Resource  ../keywords/lotuss_random_search_product_web/login_page_keywords.robot
Resource  ../keywords/lotuss_random_search_product_web/random_search_product.robot
Documentation  Example command to execute: robot -v ENV:qa -v LANG:th
Suite Teardown  close browser

*** Test Cases ***
TC-WEB-001 Random search product items - Success
  [Documentation]  For user able to search with random number in online shopping website
  [Tags]  acceptance  integration
  user open lotuss login home page
  web should display search bar and able to random search