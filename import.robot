*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Resource   keywords/common_keywords.robot
Resource   keywords/send_otp.robot
Resource   keywords/verify_otp.robot
Variables  resources/configs/common_config.yaml
Variables  resources/configs/${ENV}/config.yaml
Variables  resources/testdata/common_testdata.yaml
Variables  resources/testdata/${ENV}/data.yaml