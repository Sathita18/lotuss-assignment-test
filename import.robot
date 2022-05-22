*** Settings ***
Library    SeleniumLibrary
Resource   keywords/common/common_keywords.robot
Resource   keywords/lotuss_login_web/login_page_keywords.robot
Variables  keywords/lotuss_login_web/login_elements.yaml
Variables  resources/configs/common_config.yaml
Variables  resources/configs/${ENV}/config.yaml
Variables  resources/testdata/common_testdata.yaml
Variables  resources/testdata/${ENV}/user_data.yaml
Variables  resources/testdata/message_${LANG}.yaml