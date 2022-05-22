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
  element should contain  ${homepage_elements.login_link}  ${homepage_message.login_label}

web should display and validate login page
  click element  ${homepage_elements.login_link}
  sleep  5s
  location should be  ${lt_web_login_url.${LANG}}
  element should be visible  ${login_elements.close_button}
  element should contain  ${login_elements.login_via_mobile_label}  ${login_message.login_via_mobile_label}
  element should be visible  ${login_elements.login_image}
  element should contain  ${login_elements.login_label}  ${login_message.login_label}
  element should contain  ${login_elements.click_here_link}  ${login_message.click_here_link}
  element should be visible  ${login_elements.input_username}
  element should contain  ${login_elements.username_label}  ${login_message.username_label}
  element should be visible  ${login_elements.input_password}
  element should contain  ${login_elements.password_label}  ${login_message.password_label}
  element should be visible  ${login_elements.toggle_password_button}
  element should contain  ${login_elements.confirm_button}  ${login_message.confirm_button}
  element should contain  ${login_elements.forgot_password_link}  ${login_message.forgot_password_link}
  element should contain  ${login_elements.not_have_user_account}  ${login_message.not_have_user_account}
  element should contain  ${login_elements.register_link}  ${login_message.register_link}
  input text  ${login_elements.input_username}  ${login_message.input_username}
  input text  ${login_elements.input_password}  ${login_message.input_password}

web should be display and validate register page
  click element  ${login_elements.confirm_button}
  sleep  5s
  location should be  ${lt_web_register_url.${LANG}}
  element should be visible  ${register_elements.back_button}
  element should be visible  ${register_elements.icon_lotus_club_card}
  element should contain  ${register_elements.activate_my_lotus_account_label}  ${register_message.activate_my_lotus_account_label}
  element should contain  ${register_elements.rewards}  ${register_message.rewards}
  element should contain  ${register_elements.confirm_button}  ${register_message.confirm_button}
  element should contain  ${register_elements.decline_button}  ${register_message.decline_button}

web should be navigated to home page and show message login successfully
  click element  ${register_elements.decline_button}
  sleep  3s
  Capture Page Screenshot  logged_in.png
  location should be  ${lt_web_url.${LANG}}
  
#   page should contain  คุณได้เข้าสู่ระบบแล้ว     #${homepage_message.login_success_message}
#   wait until page contains  คุณได้เข้าสู่ระบบแล้ว  1m


# web should be display and validate register page
#   click element  ${login_elements.register_link}
#   sleep  5s
#   location should be  ${lt_web_register_url.${LANG}}
#   element should be visible  ${login_elements.close_button}
#   element should contain  ${register_elements.register_via_mobile_label}  ${register_message.register_via_mobile_label}
#   element should be visible  ${login_elements.login_image}
#   input text   ${login_elements.input_username}  ${register_message.input_username}
#   element should be visible  ${register_elements.cross_icon_button}
#   element should contain  ${register_elements.username_example}  ${register_message.username_example}
#   element should contain  ${register_elements.confirm_button}  ${register_message.confirm_button}
#   element should contain  ${register_elements.already_has_an_account}  ${register_message.already_has_an_account}
#   element should contain  ${register_elements.log_in_link}  ${register_message.log_in_link}

# web should be display register request otp page
#   click element  ${register_elements.confirm_button}
#   sleep  5s
#   location should be  ${lt_web_register_request_otp_page_url.${LANG}}
#   element should be visible  ${register_request_otp_elements.back_button}