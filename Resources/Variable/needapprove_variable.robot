*** Variables ***
${COA}              #(parturl)/coa/
${BROWSER}          gc
${chanawam}         chanawam
${search_word}      Please Approve/Reject Quotation Number: QUOTE-002 (Automate)
${submitusr}        Kosit
${LNsubmit}         V.
${urlcheckfile}     #(parturl)/coa/OpenAttechFile/ViewFile
${Json_Path}        ../../COA/Resources/Variable/CreateOrder.json
${url}              #(parturl)
${Logout_Page}      #(parturl)/coa/Home/SignOut
${number of characters}     100
${_timeout}         30
${Reason}           ลูกค้าขอเปลี่ยน Brand/Model
@{configuration_Catagory_List}
...     //img[@src='/coa/Content/images/corporate.png']
...     //b[contains(.,'Corporate Sales')]
...     //div[@class='coa-badge']
@{List Request}
...     //div[contains(@class,'coa-web-leftMenu coa-web-visiable')]
...     //span[@data-role='view-title'][contains(.,'List request')]
...     //input[@placeholder='Search...']

@{Element_Submitted user}
...     (//td[@rowspan='2'])[1]
...     //b[contains(.,'Please Approve/Reject Quotation Number: QUOTE')]
...     (//span[contains(@class,'info_view')])[1]
...     (//span[@class='info_view'])[2]
...     (//span[@class='info_view'])[2]
...     (//div[@title='null'])[1]

${input_descript2}   //input[contains(@data-bind,'AMT')]
@{list_Approved}
...  //td[contains(.,'Sarinya R. -')]
...  (//td[contains(.,'Kosit V.')])[11]
# ...  //td[contains(.,'CHANAWAM')]
...  (//td[contains(.,'Numthip J.')])[2]


@{list_case_Approved}
...  (//i[contains(@class,'fa fa-check')])[1]

@{Element_Deltial}
...     //img[contains(@data-bind,'attr: {src: submittedImage}')]
...     //span[contains(@data-bind,'text: dataHistoryDetail.SUBJECT, style:{font-size: fontSize.header}')]
...     //span[contains(@data-bind,'text: dataHistoryDetail.SUBMITTED_USER_FNAME')]
...     (//td[@data-bind='style:{font-size: fontSize.dateTime}'])[2]
...     //span[contains(@data-bind,'text: dataHistoryDetail.TEXT_DISPLAY1, style:{font-size: fontSize.detail}')]
...     //span[@data-bind='text: dataHistoryDetail.TEXT_DISPLAY2, style:{font-size: fontSize.detail}']
...     //span[contains(@data-bind,'DISPLAY3, style:{font-size: fontSize.detail}')]
...     //span[contains(@data-bind,'text: dataHistoryDetail.APPROVED_BY, style:{font-size: fontSize.detail}')]
...     //span[@data-bind='text: dataHistoryDetail.NEXT_APPROVER, style:{font-size: fontSize.detail}']
...     //div[@id='LineApprove']
...     //div[@data-style='inset']
...     //span[contains(@class,'k-dropdown-wrap k-state-default')]
...     //input[@data-bind='value: dataHistoryDetail.RETURN_REMARK']
...     //input[contains(@data-bind,'value: dataHistoryDetail.RETURN_AMT')]
...     //a[contains(@onclick,'viewTransactionViewModel.clickApprove();')]
...     //a[contains(@onclick,'viewTransactionViewModel.clickReject();')]

@{Element_Attachfile}
...     //img[contains(@id,'H_FileIcon1')]
...     //img[contains(@id,'FileIcon2')][@src='/coa/images/icon_pdf44.png']
...     //img[contains(@id,'FileIcon3')][@src='/coa/images/icon_xls44.png']
...     //span[contains(@data-bind,'text: dataFileName.fileName1')]
...     //span[contains(@data-bind,'text: dataFileName.fileName2')]
...     //span[contains(@data-bind,'text: dataFileName.fileName3')]

@{list_Need_Approve_detail}
...  //div[@class='coa-web-textHeader'][contains(.,'Need Approve')]
...  //div[@data-bind='click: onBack'][contains(.,'Detail')]
...  id:LineApprove
...  //span[contains(@class,'k-input')]
...  //input[contains(@data-bind,'REMARK')]
...  //input[contains(@data-bind,'value: dataHistoryDetail.RETURN_AMT')]
...  //a[@data-role='button'][contains(.,'Approve')]
...  //a[contains(@onclick,'viewTransactionViewModel.clickReject();')]

@{list_verify_popupReject}
...  //h4[@class='modal-title'][contains(.,'Confirm')]
...  //div[@class='bootbox-body'][contains(.,'Please Confirm To Submit Reject.')]
...  //button[contains(.,'Cancel')]
...  //button[contains(.,'OK')]