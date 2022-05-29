*** Settings ***
Resource  ../import.robot

*** Keywords ***
web should display search bar and able to random search
  element should contain  ${homepage_elements.search_bar}  ${homepage_message.search_bar}