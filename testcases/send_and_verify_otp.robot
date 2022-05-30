*** Settings ***
Resource  ../import.robot
Resource  ../keywords/send_otp.robot

*** Test Cases ***
TC-FFTI-TH-0001 Success - call api send otp for retrive ref code and verify otp
  ${send_otp_response}  send request otp to retrive ref code
  ...  ${key.type_th}
  ...  ${x_request_id.send_otp}
  ...  ${otp_common_data.mobile_number_th}
  ...  ${oneapp_mobile_url_th}
  http response status from '${send_otp_response}' should be '200'
  success response body from '${send_otp_response}' should return success message with ref code value
  ${verify_otp_response}  send request to verify otp
  ...  ${key.type_th}
  ...  ${x_request_id.verify_otp}
  ...  ${otp_common_data.mobile_number_th}
  ...  ${expected_ref_code}
  ...  ${oneapp_mobile_url_th}
  http response status from '${verify_otp_response}' should be '200'
  success response body from '${verify_otp_response}' should return success message

TC-FFTI-MY-0002 Success - call api send otp for retrive ref code and verify otp
  ${send_otp_response}  send request otp to retrive ref code
  ...  ${key.type_my}
  ...  ${x_request_id.send_otp}
  ...  ${otp_common_data.mobile_number_my}
  ...  ${oneapp_mobile_url_my}
  http response status from '${send_otp_response}' should be '200'
  success response body from '${send_otp_response}' should return success message with ref code value
  ${verify_otp_response}  send request to verify otp
  ...  ${key.type_my}
  ...  ${x_request_id.verify_otp}
  ...  ${otp_common_data.mobile_number_my}
  ...  ${expected_ref_code}
  ...  ${oneapp_mobile_url_my}
  http response status from '${verify_otp_response}' should be '200'
  success response body from '${verify_otp_response}' should return success message