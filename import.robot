*** Settings ***
Library    SeleniumLibrary
Resource   keywords/common/common_keywords.robot
Variables  resources/configs/common_config.yaml
Variables  resources/configs/${ENV}/config.yaml
Variables  resources/testdata/${ENV}/user_data.yaml
Variables  resources/testdata/message_${LANG}.yaml