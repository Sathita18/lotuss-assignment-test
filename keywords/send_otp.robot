*** Settings ***
Resource  ../import.robot

*** Keywords ***
send request otp to retrive ref code
  [Arguments]  ${key}  ${x_request_id}  ${mobile_number}  ${oneapp_mobile_url_type}
  create session  oneapp_mobile_bff_service  ${oneapp_mobile_url_type}  verify=True
  ${headers}  create dictionary
  ...  key=${key}
  ...  Content-Type=application/json
  ...  x-request-id=${x_request_id}
  ...  Accept-Language=en
  ${request_body}  create dictionary
  ...  mobileNumber=${mobile_number}
  ${response}  post request  oneapp_mobile_bff_service  ${uri.send_otp}  headers=${headers}  data=${request_body}
  [Return]  ${response}

success response body from '${response}' should return success message with ref code value
  ${actual_response_body}  set variable  ${response.json()}
  ${status_response_item_count}  get length  ${actual_response_body}[status]
  should be equal  ${status_response_item_count}  ${2}
  should be equal as numbers  ${actual_response_body}[status][code]  ${200}
  should be equal as strings  ${actual_response_body}[status][message]  success
  ${data_response_item_count}  get length  ${actual_response_body}[data]
  should be equal  ${data_response_item_count}  ${1}
  should not be empty  ${actual_response_body}[data][refCode]
  set test variable  ${expected_ref_code}  ${actual_response_body}[data][refCode]