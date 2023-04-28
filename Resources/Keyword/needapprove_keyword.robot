*** Settings ***
Library        Selenium2Library
Library          String
Library         Collections
Library        RequestsLibrary
Library          OperatingSystem
Library         DateTime
Library        JSONLibrary

# Resource            ../TestSuites/needapprove.robot
Resource            ../Repository/needapprove_repo.robot
Resource            ../Variable/needapprove_variable.robot

*** Keywords ***
Open COA
    open browser    ${COA}     ${BROWSER}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    
Login COA
    Open COA
    Input Text    ${input_usrname}      ${chanawam}
    Input Text    ${input_password}     ${chanawam}
    click element   ${submit_btn}
Click Need Approve Menu
    Wait Until Page Contains Element        ${logout_btn}       60s
    Wait Until Keyword Succeeds     10s  2s     click element       ${needapprove_menu} 
Verify Menu After Login
    Wait Until Keyword Succeeds     10s  2s     Element Should be visible       ${All_Left_Menu}
    Wait Until Keyword Succeeds     10s  2s     Element Should be visible       ${In_NeedApprove_menu}
Click Element javascript
    [Arguments]     ${xpath}
    execute javascript   document.evaluate("${xpath}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
Check Menu
    Wait Until Page Contains Element          ${logout_btn}    60s
    Element should be visible               ${needapprove_menu}        #เมนู Need approve แสดง
    Element should be visible               ${inform_menu}          #เมนู Infrom แสดง
    Element should be visible               ${OverSLA_menu}              #เมนู OverSLA แสดง
    Element should be visible               ${history_menu}            #เมนูHistory แสดง
    Element should be visible               ${stting_menu}           #เมนู Setting แสดง
    Element should be visible               ${admin_menu}                      #เมนู Admin แสดง
    Element should be visible               ${logout_btn}                #เมนู log out แสดง
Check Need Approve Page
    Wait Until Page Contains Element          ${logout_btn}    60s
    Wait Until Keyword Succeeds     10s  2s     Element Should be visible       ${Category} 
Verify Word and Icon
    Wait Until Page Contains Element          ${logout_btn}    60s
    Element should be visible       ${needapprove_word}
    Element should be visible       ${aislogo}
    Element should be visible       ${Category}
Verify Word and Icon List Request
    Wait Until Page Contains Element          ${logout_btn}    60s
    Element should be visible       ${needapprove_word}
    Element should be visible       ${aislogo}
    Element should be visible       ${List_Request_Word} 
Verify List Catagory
    ${list_Catagory}   ${value} =  Run Keyword And Ignore Error  Wait Until Element Is Visible   ${category_list}  60s
    Run Keyword If  '${list_Catagory}' == 'FAIL'  Element Should Not Be Visible      ${category_list}
    Run Keyword If  '${list_Catagory}' == 'PASS'  Validate Catagory List Should Be Visible :         ${configuration_Catagory_List}
Cilck Category List
    Wait Until Page Contains Element        ${category_list}        60s
    Click Element       ${category_list}
    Wait Until Page Contains Element        ${On_top_tab}      60s
    Wait Until Page Contains Element        ${tab_All}      60s
    Wait Until Page Contains Element         ${tab_high}    60s
    Wait Until Page Contains Element       ${tab_midium}    60s
    Wait Until Page Contains Element       ${tab_low}       60s
veify color text filename
    ${Check_Color}      Get Webelement      ${start_date} 
        ${Textcolor}    Call Method    ${Check_Color}    value_of_css_property    color
        #${Check_Color1}     Get Element Attribute       //span[@data-bind='text: SLA.start'][contains(.,'Last Tuesday at 13:00')]
        #Should Be Equal     rgba(51, 51, 51, 1)     ${Textcolor} 
Verify Tab priority
    Wait Until Page Contains Element        ${On_top_tab}      60s
    Element should be visible       ${tab_All}
    Element should be visible       ${tab_high} 
    Element should be visible       ${tab_midium}
    Element should be visible       ${tab_low} 
Validate Catagory List Should Be Visible :
    [Arguments]   ${listData}  
    Set Test Variable  ${listData}
    ${Length}    Get Length   ${listData}
    FOR    ${i}    IN RANGE    ${Length}
        Log  ${listdata[${i}]}
        Wait Until Element Is Visible  ${listdata[${i}]}  60s
        Element Should Be Visible  ${listdata[${i}]}  60s
        Page Should Contain Element  ${listdata[${i}]}  60s
        Scroll Element Into View    ${listdata[${i}]}
    END
Input Charecter in Input Search
    [Arguments]    ${Locator}   ${loop}   ${Charecter}
    @{list}     Create List 
    ${loop}      Set Variable    ${loop} 
    ${loop}   Evaluate      ${loop} - 1
   
    FOR    ${i}    IN RANGE    ${loop}   
        ${value}      Set Variable    ${Charecter}
        Append To List   ${list}    ${value}
    END

    ${list}   Convert To List     ${list}
    ${Slice}   Get Slice From List   ${list}
    ${convertListToString}=   Evaluate             "".join(${Slice})
    ${Length}    Get Length   ${convertListToString}
    Input Text  ${Locator}    ${convertListToString}


Input Charecter in Description#1
    [Arguments]   ${Locator} 
    Set Test Variable  ${listCharecter}
    ${Length}    Get Length   ${listCharecter}
    FOR    ${i}    IN RANGE    ${Length}
        Log  ${listdata[${i}]}
        Input Text  ${Locator}    1  
        Element Should Be Visible  ${listdata[${i}]}  60s
        Run Keyword If  '${listdata[${i}]}' == '500'
    END
Verify Should Be Length :
    [Arguments]  ${locator}  ${ShouldBeLength}
    Wait Until Element Is Visible  ${locator}     60s
    ${getdata}=  Get Value    ${locator}
    ${getdata_count}=	Get Length   ${getdata}
    Should Be True	 '${getdata_count}' == '${ShouldBeLength}'
Verify Input Search 
    Wait Until Keyword Succeeds     10s  2s     Element Should Be Visible        ${input_search}        
    Wait Until Keyword Succeeds     10s  2s     Element Should Be Visible       ${Icon_magnifying glass}
Select Reason
    Click Element :  ${dropdown_reason}
    Click Element :  ${Locator_reason}
    
Check submitname
    # Sleep  3s
    Wait Until Page Contains Element        ${usr_submit}      120s
    ${name}     get text     ${usr_submit}
    ${name_submit}     Split String        ${name}     ${submitusr}${SPACE}
    Should Be True   '${name_submit[${0}]}'=='@'
    Should Be True   '${name_submit[${1}]}'=='${LNsubmit}'
    # ${Data} =	Get From List	${name}  1
    ${LastNsubmit}     Split String        ${name}     @
    ${LastNsubmit}     Split String        ${LastNsubmit[${1}]}     ${SPACE}
    Should Be True   '${LastNsubmit[${0}]}'=='${submitusr}'

Click TabAll
    Wait Until Page Contains Element        ${tab_All}      60s
    Wait until element is visible   ${tab_All}    5s      #ปุ่ม tab All
    click element                   ${tab_All}            #กดปุ่ม tab All
    ${checkrequest}         Run keyword and return status       Element Should be visible      ${request_list}
    Run Keyword If      ${checkrequest} == 'TRUE'    Element Should be visible    ${clickloadmore}
Click TabHigh
    Wait Until Page Contains Element        ${tab_high}      60s
    Element Should be visible       ${tab_high}            #ปุ่ม tab high
    click element                   ${tab_high}            #กดปุ่ม tab high
    ${checkrequest}         Run keyword and return status       Element Should be visible      ${request_list}
    Run Keyword If      ${checkrequest} == 'TRUE'               Element Should be visible           ${clickloadmore}
Click Medium
    Wait Until Page Contains Element        ${tab_midium}       60s
    Element Should be visible       ${tab_midium}            #ปุ่ม tab Medium
    click element                   ${tab_midium}            #ปุ่มกด tab Medium
    ${checkrequest}         Run keyword and return status       Element Should be visible      ${request_list}
    Run Keyword If      ${checkrequest} == 'TRUE'    Element Should be visible    ${clickloadmore}
Click TabLow
    Wait Until Page Contains Element        ${tab_low}      120s
    Element Should be visible       ${tab_low}            #ปุ่ม tab Low
    click element                   ${tab_low}            #ปุ่ม tab Low
    # click element                   ${tab_All}            #กดปุ่ม tab All
    # Element Should be visible       ${aislogo}      #Logo AIS
Verify Icon and TextColor SLA Start    
    Element Should Be Visible       ${Clock_Icon_Start}
        ${Check_Color}      Get Webelement      ${start_date} 
        ${Textcolor}    Call Method    ${Check_Color}    value_of_css_property    color
        #${Check_Color1}     Get Element Attribute       //span[@data-bind='text: SLA.start'][contains(.,'Last Tuesday at 13:00')]
        Should Be Equal     rgba(51, 51, 51, 1)     ${Textcolor} 
        
Verify Icon and TextColor SLA End
    Element Should Be Visible       ${Clock_Icon_END}
        ${Check_Color}      Get Webelement      ${end_date}
        ${Textcolor}    Call Method    ${Check_Color}    value_of_css_property    color
        #${Check_Color1}     Get Element Attribute       //span[@data-bind='text: SLA.start'][contains(.,'Last Tuesday at 13:00')]
        Should Be Equal     rgba(255, 0, 0, 1)     ${Textcolor} 

Verify Left Menu and detail
        Click Element :  ${_Detail}
        Wait Until Element Is Visible       ${List_Request_Word}   120s

Verify Icon and Text
    Element Should Be Visible       ${aislogo}

Verify Detail
     ${Check_Color}      Get Webelement      ${Detail}
        ${Textcolor}    Call Method    ${Check_Color}    value_of_css_property    color
        #${Check_Color1}     Get Element Attribute       //span[@data-bind='text: SLA.start'][contains(.,'Last Tuesday at 13:00')]
        #Should Be Equal     rgba(51, 51, 51, 1)     ${Textcolor}
Verify Approve btn
    Wait Until Keyword Succeeds     10s  2s     Element Should be visible       ${approve_btn}
Verify Reject btn
    Wait Until Keyword Succeeds     10s  2s     Element Should be visible       ${reject_btn}
Click Request List
    Wait Until Page Contains Element        ${Search&List_Request}    60s
    Wait Until Keyword Succeeds     10s  2s     click element       ${request_list}

Search
    Wait until element is visible   ${input_search}    #input ค้นหา
    Element Should be visible       ${input_search}
    Input Text      ${input_search}     ${search_word}      #ค้นหา
    Press Keys    ${input_search}    ENTER      #กดenter

After Search
    Element Should be visible      ${checkneedapprove}    #ตัวหนังสือ Need Approve
    Element Should be visible       ${start_date}     #start date
    Element Should be visible       ${end_date}      #end date
    Element Should be visible      ${request_list}      #รายการคำขอ(List request)
verify Clickload more
    ${checkrequest}         Run keyword and return status       Element Should be visible      ${request_list}
    Run Keyword If      ${checkrequest} == 'TRUE'    Element Should be visible        ${clickloadmore}
   Wait Until Keyword Succeeds     10s  2s     click element       ${request_list}    #กดเข้ารายการคำขอ
   Element Should be visible        ${Name_approveby}

Approve
    Click Element :    ${approve_btn}      #ปุ่ม Approve
    Wait Until Element Is Visible        ${Popup_Body}   120s
    ${Mesessge_popup}   get text     ${Popup_Body} 
    Should Be True  '${Mesessge_popup}' == 'Please Confirm To Submit Approve.'
    sleep  2s
    Click Element :       ${Popup_OK_BTN}         #กดปุ่มok popup
    sleep  2s
    Click Element :       ${sucess_popup}
    sleep  2s


Input Description#1
    Input Charecter in Description#1
    Verify Should Be Length :       ${input_descript1}      ${500}
    Input Text   ${input_descript1}       ABC
Input Description#2 
    Verify Should Be Length :       ${input_descript1}      ${9}
    Input Text   ${input_descript1}       1234567890
Reject
    click element        ${reject_btn}
   Wait Until Keyword Succeeds     10s  2s      click element    ${popup_ok}          #กดปุ่มok popup
   Wait Until Keyword Succeeds     10s  2s      Click Element      //div[@class="modal-footer"]/button

Click File
    ${excludes} =	Get Window Handles
    Click Element :  ${link_file1}
    Switch Window    New
    ${excludes} =	Get Window Handles
    sleep  2s
    ${get_url}   Get Location  
    Should Be True  '${get_url}' == '#(parturl)/coa/OpenAttechFile/ViewFile'
    # Wait Until Keyword Succeeds     10s  2s      Location Should Be                ${urlcheckfile}
    close window
    Switch Window

Click and Verify fil URL
   click element                    ${link_file1}
   Switch Window    New
   Wait Until Keyword Succeeds     10s  2s      Location Should Be                ${urlcheckfile}
   close window
   Switch Window
   Title Should Be      COA
   click element                    ${link_file2}
   Switch Window    New
   Wait Until Keyword Succeeds     10s  2s      Location Should Be                ${urlcheckfile}
   close window
   Switch Window
   Title Should Be      COA
   click element                    ${link_file3}
   Switch Window    New
   Wait Until Keyword Succeeds     10s  2s      Location Should Be                ${urlcheckfile}
   close window
   Switch Window
   Title Should Be      COA
#    Element Should be visible        ${input_descript1}       #Description#1
#    Element Should be visible        ${input_descript2}       #Description#2
#    Element Should be visible        ${approve_btn}    #ปุ่มapprove
#    Element Should be visible        ${reject_btn}       #ปุ่ม Reject
#    Select Reason
#    Input Text   ${input_descript1}       ABC
#    Input Text   ${input_descript2}       123
Click Reject
    Click Element :  ${reject_btn}
    Validate List Chart Should Be Visible :  ${list_verify_popupReject}
    Click Element :  ${PopUp_Cancel_BTN}
   
Logout
    Wait Until Page Contains Element        ${logout_btn}       60s
    Wait Until Keyword Succeeds     20s  2s      click element      ${logout_btn}
    Wait Until Keyword Succeeds     20s  2s      Click Element      ${OK_PopUp_Logout}
    # Wait Until Keyword Succeeds     20s  2s      Location Should Be      ${Logout_Page}
    Close Browser

Gen Current Date
    ${getdate} =  Get Current Date
    ${today_time} =  Convert Date  ${getdate}  result_format=%H%M%S
    ${format_today} =  Convert Date  ${getdate}	result_format=%d/%m/%Y %H:%M:%S
    ${_today} =  Convert Date  ${getdate}  result_format=%Y%m%d

    Set Test Variable    ${today_time}
    Set Test Variable    ${_today}
    Set Test Variable  ${format_today}

Create Request
    needapprove_keyword.Gen Current Date
    Create Session      APICreateRequest      ${url}       
    ${json_string}=    Load JSON From File    ../Resources/Variable/CreateOrder.json   UTF-8
    log  ${json_string['SUBJECT']}
    ${data_SUBJECT} =  Get Variable Value  ${json_string['SUBJECT']}
    Set Test Variable   ${data_SUBJECT}
    ${json_string}=	 Update Value To Json	${json_string}	 $..REF_ID  JHD00000${today_time}_${_today}_0000
    # log  ${json_string}
    ${json_string}=	 Update Value To Json	${json_string}	 $..SLA_START_DT  ${format_today}
    # log  ${json_string}
    ${json_string}   Convert Json To String   ${json_string}
    # log  ${json_string}
    ${header}=      Create Dictionary      Content-Type=application/json; charset=utf-8   
    ${resp}=    Post On Session     APICreateRequest      /coa/api/CreateTransaction   data=${json_string}    headers=${header}

    Log     ${resp.text}
    ${json} =  Set Variable  ${resp.json()}
    Should Be Equal  ${resp.status_code}  ${200}

Check SUBJECT
    Sleep  5s
    Input Text  ${textFilter}  ${data_SUBJECT}
    Wait Until Page Contains Element    (//b[contains(.,'${data_SUBJECT}')])[1]   60s
    
Validate List Chart Should Be Visible :
    [Arguments]   ${listData}  
    Set Test Variable  ${listData}
    ${Length}    Get Length   ${listData}
    FOR    ${i}    IN RANGE    ${Length}
        Log  ${listdata[${i}]}
        Wait Until Element Is Visible  ${listdata[${i}]}  120s
        Element Should Be Visible  ${listdata[${i}]}  60s
        Page Should Contain Element  ${listdata[${i}]}  120s
        Scroll Element Into View    ${listdata[${i}]}
    END

Click Element :
    [Arguments]   ${Local}
    Wait Until Element Is Visible   ${Local}      120s
    Click Element    ${Local}   