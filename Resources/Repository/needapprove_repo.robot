*** Variables ***
${input_usrname}            //div[@id="login-form"]/input[1]
${input_password}           //div[@id="login-form"]/input[2]
${submit_btn}               //div[@id="login-form"]/a[1]
${All_Left_Menu}            //div[contains(@class,'coa-web-leftMenu coa-web-visiable')]
${In_NeedApprove_menu}      //ul[contains(@data-role,'listview')]
${needapprove_menu}         //a[@onclick='Cilck_NeedApprove();'][contains(.,'Need Approve')]
${inform_menu}              //a[@onclick='Cilck_Inform();'][contains(.,'Inform')]
${OverSLA_menu}             //a[@onclick='Cilck_OverSLA();'][contains(.,'Over SLA')]
${history_menu}             //a[@onclick='Cilck_History();'][contains(.,'History')]
${stting_menu}              //a[@onclick='Cilck_Setting();'][contains(.,'Setting')]
${admin_menu}               //a[@href='#'][contains(.,'Admin')]
${logout_btn}               //a[@onclick='logout();'][contains(.,'Log Out')]
${NeedApprove_part}         //*[@id="div_Category"]/div[3]
${Category}                 //div[@id='div_Category']
${Menu_part}                //*[@class="coa-web-leftMenu coa-web-visiable"]
${needapprove_word}         //div[@class='coa-web-textHeader'][contains(.,'Need Approve')]
${righ_symbol}              //*[@id="ul_viewCategory"]/div/table/tbody/tr/td[3]
${category_list}            //div[@role='option']
${On_top_tab}               //div[contains(@class,'k-button-group')]
${tab_All}                   //a[@id="A"]
${tab_high}                 //a[@id="H"]
${tab_midium}               //a[@id="M"]
${tab_low}                  //*[@id="L"]
${Icon_magnifying glass}        //i[contains(@class,'fa fa-search')]
${Search}                   //input[@onkeyup='viewTransactionViewModel.onFilter($(this).val());']
${List_Request_Word}        //span[@data-role='view-title'][contains(.,'List request')]     
${request_list_Low1st}      (//div[contains(@aria-selected,'false')])[1]
${All_Request_List}         //ul[@id='ul_viewTransaction']
${request_list}             (//b[contains(.,'Please Approve/Reject')])[1]
${clickloadmore}            //*[@id="label_loadmore"]
${aislogo}                     //img[contains(@class,'ais_logo')]
${input_search}             //div[@id="div_formFilter"]//input[@id="textFilter"]
${Detail}                   //div[@data-bind='click: onBack'][contains(.,'Detail')]
# ${ALL_Detail}               //div[@data-role='content']
${checkneedapprove}         (//*[contains(text(),'Need Approve')])[1]
${input_descript1}          //input[@data-bind='value: dataHistoryDetail.RETURN_REMARK']
${input_descript2}          //input[@data-bind='value: dataHistoryDetail.RETURN_AMT']
${approve_btn}              //a[@data-role='button'][contains(.,'Approve')]
# ${Popup_OK_BTN}                 //button[contains(@data-bb-handler,'main')]
${Popup_OK_BTN}                //button[@data-bb-handler='main'][contains(.,'OK')]
${reject_btn}              //a[@onclick='viewTransactionViewModel.clickReject();']
# ${usr_submit}               //td[@data-bind='style:{font-size: fontSize.dateTime}'][contains(.,'@KositV.')]
${dropdown_reason}          //span[contains(@class,'k-input')]
#//span[contains(@class,'k-dropdown-wrap k-state-default')]
${Option__reason}           //select[contains(@data-role,'dropdownlist')]
${Name_approveby}                //span[contains(@data-bind,'BY, style:{font-size: fontSize.detail}')]
${nextapprover}             //span[@data-bind='text: dataHistoryDetail.NEXT_APPROVER, style:{font-size: fontSize.detail}']
${lineapprove}              //div[@id="LineApprove"]
${attachfile}               //div[@data-style='inset']
${link_file1}               //a[@onclick='SetParameterNeed(viewTransactionViewModel.urlFileName.ATTACHED_FILE_NAME1);']
${link_file2}               //a[contains(@onclick,'SetParameterNeed(viewTransactionViewModel.urlFileName.ATTACHED_FILE_NAME2);')]
${link_file3}               //a[@onclick='SetParameterNeed(viewTransactionViewModel.urlFileName.ATTACHED_FILE_NAME3);']
${correct_mark}             //div[@id="LineApprove"]/td[2]/i
${start_date}               //span[@data-bind='text: SLA.start']
${end_date}                 //span[@data-bind='text: SLA.end']
# ${sucess_popup}             //div[@class="modal-footer"]/button
${sucess_popup}             //button[@data-bb-handler='main'][contains(.,'OK')]
${request_list}             //*[@id="div_Category"]/div[3]
${OK_PopUp}                 //*[@class="modal-footer"]/button
${OK_PopUp_Logout}          //button[contains(@class,'btn btn-success')]
${Search&List_Request}      //div[@id='div_listview']
${Locator_reason}           //li[text()='ลูกค้าขอเปลี่ยน Brand/Model']
${Popup_Body}               //div[contains(@class,'bootbox-body')]
${PopUp_Cancel_BTN}         //button[@data-bb-handler='success'][contains(.,'Cancel')]
${Clock_Icon_Start}         (//i[contains(@class,'fa fa-clock-o')])[21]
${Clock_Icon_END}           (//i[contains(@class,'fa fa-clock-o')])[22]
${textFilter}                id:textFilter
# ${subject_fromJson}  (//b[contains(.,'Please Approve/Reject Quotation Number: QUOTE-001 (Automate)')])[1]
${usr_submit}               (//td[contains(@data-bind,'style:{font-size: fontSize.dateTime}')])[1]
${_Detail}                   //span[@data-role='view-title'][contains(.,'Detail')]







