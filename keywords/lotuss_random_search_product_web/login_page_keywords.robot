*** Settings ***
Resource  ../import.robot

*** Keywords ***
user open lotuss login home page
  open browser  ${lt_web_url.${LANG}}  ${browser.chrome}
  web should display home page

web should display home page
  maximize browser window
  location should be  ${lt_web_url.${LANG}}
  sleep  5s
  element should be visible  ${homepage_elements.lotuss_logo}