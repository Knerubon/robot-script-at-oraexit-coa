*** Settings ***
Resource    ../Resources/Keyword/needapprove_keyword.robot
Resource    ../Resources/Repository/needapprove_repo.robot
Resource    ../Resources/Variable/needapprove_variable.robot
Test Teardown   Logout
*** Test Cases ***

Regression Test COA - Need Approve_natnu090621_1
        [Tags]      COA_NeedApprove_Web_natnu090621_1
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA URL:   # url test
        ...      2. Log in ด้วย username : chanawam/chanawam
        ...      3. เลือกเมนู Need Approve จากเมนูด้านซ้าย"
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบหน้าจอ Need Approve
        ...    Expected Result
        ...     -> - หน้าจอ Need Approve ประกอบด้วยส่วนต่าง ๆ ดังนี้
        ...      - ส่วนของแถบเมนูด้านข้างซ้าย
        ...      - ส่วนของ Need Approve"
        Create Request
        Login COA
        Click Need Approve Menu
        Verify Menu After Login
       
Regression Test COA - Need Approve_natnu090621_2
        [Tags]      COA_NeedApprove_Web_natnu090621_2
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     ""1. Login เข้าสู่ระบบ COA
        ...       2. Log in ด้วย username : chanawam/chanawam
        ...       3. เลือกเมนู Need Approve จากเมนูด้านซ้าย"
        ...    EXPECTED RESULT:   
        ...        "ตรวจสอบส่วนของแถบเมนูด้านข้างซ้าย
        ...     -> - ประกอบด้วยส่วนต่าง  ๆ ดังนี้
        ...      - รูปภาพ Profile และ ชื่อนามสุกลของผู้ใช้งาน
        ...      - แสดงเมนูต่าง ๆ ดังนี้
        ...       - Need Approve
        ...       - Inform
        ...       - Over SLA
        ...       - History
        ...       - Setting
        ...       - Admin
        ...       - Transactiom Inform
        ...       - Import Information
        ...       - Log Out"
        Login COA
        Click Need Approve Menu
        Check Menu
        
Regression Test COA - Need Approve_natnu090621_3
        [Tags]      COA_NeedApprove_Web_natnu090621_3
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA
        ...      2. เลือกเมนู Need Approve จากเมนูด้านซ้าย"
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบการทำงานเมื่อกดเมนู Need Approve
        ...     -> - แสดงหน้าจอ ""Need Approve "" - Category"
        Login COA
        Click Need Approve Menu
        Check Need Approve Page
        
Regression Test COA - Need Approve_natnu090621_4
        [Tags]      COA_NeedApprove_Web_natnu090621_4
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย"
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบส่วนของ Need Approve
        ...     -> - แสดงข้อความ ""Need Approve"" (ตัวหนา สีดำ) 
        ...     - แสดงผลไอคอน AIS ที่มุมด้านขวา
        ...     - แสดงส่วนของการแสดงข้อมูล Category"
        Login COA
        Click Need Approve Menu
        Verify Word and Icon
        
Regression Test COA - Need Approve_natnu090621_5
        [Tags]      COA_NeedApprove_Web_natnu090621_5
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดง Need Approve
        ...     - การแสดงผลในส่วนของการแสดงข้อมูล  กรณี มีข้อมูลที่จะแสดงผล
        ...     -> - แสดงผลข้อความ ""Category""  (แสดงเป็นตัวอักษรสีเขียว)
        ...     - แสดงรายการ category ที่มีรายการข้อมูล ดังนี้
        ...      - แสดง Icon ของ category
        ...      - แสดงชื่อ Category (แสดงเป็นตัวอักษรสีดำ  ตัวหนา)
        ...      - แสดงจำนวนข้อมูลใน Category นั้น ๆ (แสดงเป็นตัวเลขสีขาว ในกรอบสีแดง) ไว้ด้านขวามือสุดของรายการ (ก่อนเครื่องหมาย > )
        ...      - แสดงเครื่องหมาย "" > "" ไว้ด้านขวามือสุดของรายการ" 
        Login COA
        Click Need Approve Menu
        Verify List Catagory
        
Regression Test COA - Need Approve_natnu090621_6
        [Tags]      COA_NeedApprove_Web_natnu090621_6
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...      2. นำเมาส์ไปกดที่รายการ Category "
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบการทำงาน เมื่อเลือกที่รายการ Category
        ...     -> - แสดงหน้าจอ Need Approve : List Request ของรายการที่อยู่ใน Category ที่เลือก
        ...     - แสดง Tab priority - All , High , Medium , Low"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Verify Tab priority
        
Regression Test COA - Need Approve_natnu090621_7
        [Tags]      COA_NeedApprove_Web_natnu090621_7
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3.เลือกที่รายการ Category "
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบหน้าจอ Need Approve (List Request)
        ...     -> - หน้าจอ Need Approve (List Request) ประกอบด้วยส่วนต่าง ๆ ดังนี้
        ...      - ส่วนของแถบเมนูด้านข้างซ้าย 
        ...      - ส่วนของ Need Approve (List Request) 
        ...      - แสดง Tab priority - All , High , Medium , Low
        ...      - Field Search "
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Verify Tab priority
        Validate Catagory List Should Be Visible :              ${List Request}
        
Regression Test COA - Need Approve_natnu090621_8
        [Tags]      COA_NeedApprove_Web_natnu090621_8
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA
        ...      2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...      3.เลือกที่รายการ Category "
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบส่วนของ Need Approve (List Request)
        ...     -> - แสดงข้อความ ""Need Approve"" (ตัวหนา สีดำ) 
        ...     - แสดงผลไอคอน AIS ที่มุมด้านขวา
        ...     - แสดงส่วนของการแสดงข้อมูล List Request" 
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Verify Word and Icon List Request
        
Regression Test COA - Need Approve_natnu090621_9
        [Tags]      COA_NeedApprove_Web_natnu090621_9
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA
        ...      2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...      3.เลือกที่รายการ Category
        ...      4. ตรวจสอบ List Request"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...     - การแสดงผลในส่วนของการแสดงข้อมูล List Request
        ...     ->  - แสดงผลข้อความ ""< List request""  (แสดงเป็นตัวอักษรสีเขียว, สามารถกดได้)
        ...      - แสดงปุ่มสำหรับเลือกการแสดงผล โดยประกอบด้วย 4 ปุ่มติดกัน ดังนี้
        ...      - All
        ...      - High
        ...      - Medium
        ...      - Low"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Verify Tab priority
        
Regression Test COA - Need Approve_natnu090621_10
        [Tags]      COA_NeedApprove_Web_natnu090621_10
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA
        ...      2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...      3.เลือกที่รายการ Category 
        ...      4. ตรวจสอบ Priority"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...     - การแสดงผลปุ่มสำหรับเลือกการแสดงผล
        ...     -> - แสดงปุ่มสำหรับเลือกการแสดงผล โดยประกอบด้วย 4 ปุ่มติดกัน ดังนี้
        ...      - All
        ...      - High
        ...      - Medium
        ...      - Low
        ...     - โดยเลือกปุ่ม ""All"" ไว้เป็นค่าเริ่มต้น
        ...     - ปุ่มที่ถูกเลือกจะแสดงผลเป็นสีเขียว ตัวอักษรสีขาว
        ...     - ปุ่มที่ไม่ถูกเลือกจะแสดงผลเป็นสีขาว ตัวอักษรสีดำ
        ...         - Field Search "
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Verify Tab priority
Regression Test COA - Need Approve_natnu090621_11
        [Tags]      COA_NeedApprove_Web_natnu090621_11
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. กดปุ่ม "All"
        ...
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...      - การทำงานเมื่อกดปุ่ม ""All"" กรณี มีข้อมูลที่จะแสดงผล
        ...     (ตรวจสอบข้อมูลใน COA_APPROVE_TRANSACTION)
        ...     -> - แสดง Textbox สำหรับการ Search ข้อมูล
        ...      - แสดงรายการข้อมูลที่รอ Approve  
        ...      - แสดงสูงสุด 10 รายการ (ตามการ Config)
        ...      - แสดงข้อความ ""Click to load more.""
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click TabAll
        
Regression Test COA - Need Approve_natnu090621_12
        [Tags]      COA_NeedApprove_Web_natnu090621_12
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. กดปุ่ม "High" "
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...     - การทำงานเมื่อกดปุ่ม ""High"" กรณี มีข้อมูลที่จะแสดงผล
        ...     -> - แสดง Textbox สำหรับการ Search ข้อมูล
        ...        - แสดงรายการข้อมูลที่รอ Approve 
        ...        - แสดงสูงสุด 10 รายการ (ตามการ Config)
        ...        - แสดงข้อความ ""Click to load more.""
         Login COA
        Click Need Approve Menu
        Cilck Category List
        Click TabHigh
        
Regression Test COA - Need Approve_natnu090621_13
        [Tags]      COA_NeedApprove_Web_natnu090621_13
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. กดปุ่ม "Medium"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...      - การทำงานเมื่อกดปุ่ม ""Medium"" กรณี มีข้อมูลที่จะแสดงผล
        ...     -> - แสดง Textbox สำหรับการ Search ข้อมูล
        ...      - แสดงรายการข้อมูลที่รอ Approve 
        ...      - แสดงสูงสุด 10 รายการ (ตามการ Config)
        ...      - แสดงข้อความ ""Click to load more."
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Medium
        
Regression Test COA - Need Approve_natnu090621_14
        [Tags]      COA_NeedApprove_Web_natnu090621_14
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. กดปุ่ม "Low"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...      - การทำงานเมื่อกดปุ่ม ""Low"" กรณี มีข้อมูลที่จะแสดงผล
        ...      -> - แสดง Textbox สำหรับการ Search ข้อมูล
        ...      - แสดงรายการข้อมูลที่รอ Approve  
        ...      - แสดงสูงสุด 10 รายการ (ตามการ Config)
        ...      - แสดงข้อความ ""Click to load more.""
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click TabLow
        
Regression Test COA - Need Approve_natnu090621_15
        [Tags]      COA_NeedApprove_Web_natnu090621_15
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Search ข้อมูลที่ Textbox"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...      - การแสดง Textbox สำหรับการ Search ข้อมูล
        ...     -> - แสดง icon แว่นขยาย ไว้ใน textbox (ที่ตำแหน่งด้านหน้า)
        ...     - มีค่าเริ่มต้นเป็นค่าว่าง
        ...     - กรอกข้อมูลได้สูงสุด 100 ตัวอักษร"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Verify Input Search         
        Input Charecter in Input Search     ${input_search}   ${120}      A
        Verify Should Be Length :   ${input_search}  ${100}
        

Regression Test COA - Need Approve_natnu090621_16
        [Tags]      COA_NeedApprove_Web_natnu090621_16
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     ""1. Login เข้าสู่ระบบ COA
        ...       2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...       3.เลือกที่รายการ Category 
        ...       4. ข้อมูลที่รอการ Approve ส่วนของ User id"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...      - การแสดงรายการข้อมูลที่รอการ Approve ส่วนของ User id ของผู้ส่ง (Submitted user)
        ...     -> - แสดงข้อมูลต่าง ๆ ดังนี้
        ...      - Profile Pic ของผู้ส่ง (Submitted user)
        ...      - Title ของรายการ
        ...      - User id ของผู้ส่ง (Submitted user)
        ...      - SLA Start date
        ...      - SLA End date
        ...      - Text Display1
        ...      - แสดงเครื่องหมาย "" > "" (ทีด้านขวาสุดของรายการ)
        ...      - แสดงผลเรียงลำดับตาม SLA End date มากสุด"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Validate Catagory List Should Be Visible :              ${Element_Submitted user}           
        
Regression Test COA - Need Approve_natnu090621_17
        [Tags]      COA_NeedApprove_Web_natnu090621_17
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     ""1. Login เข้าสู่ระบบ COA
        ...       2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...       3.เลือกที่รายการ Category 
        ...       4. ข้อมูลที่รอการ Approve ส่วนของ User id"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...      - การแสดงรายการข้อมูลที่รอการ Approve ส่วนของ User id ของผู้ส่ง (Submitted user)
        ...     -> - แสดงเครื่องหมาย “@” + ชื่อ Submitted user + <space> + นามสกุลตัวแรกของ Submitted user + “.”"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Check submitname
        
Regression Test COA - Need Approve_natnu090621_18
        [Tags]      COA_NeedApprove_Web_natnu090621_18
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     "1. Login เข้าสู่ระบบ COA
        ...      2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...      3.เลือกที่รายการ Category 
        ...      4. ข้อมูลที่รอการ Approve ส่วนของ SLA Start date"
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...      -  การแสดงรายการข้อมูลที่รอการ Approve ส่วนของ SLA Start dat
        ...     -> - แสดง icon นาฬิกา และเป็นข้อความสีเทา"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Verify Icon and TextColor SLA Start
Regression Test COA - Need Approve_natnu090621_19
        [Tags]      COA_NeedApprove_Web_natnu090621_19
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3.เลือกที่รายการ Category 
        ...     4. ข้อมูลที่รอการ Approve ส่วนของ SLA End date
        ...    EXPECTED RESULT:  
        ...         "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...      - การแสดงรายการข้อมูลที่รอการ Approve ส่วนของ SLA End Date
        ...     -> - แสดง icon นาฬิกา และเป็นตัวอักษรสีแดง"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Verify Icon and TextColor SLA End

Regression Test COA - Need Approve_natnu090621_20
        [Tags]      COA_NeedApprove_Web_natnu090621_20
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3.เลือกที่รายการ Category 
        ...     4. ข้อมูลที่รอการ Approve ส่วนของ Text Display1
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (List Request)
        ...        - การแสดงรายการข้อมูลที่รอการ Approve ส่วนของ Text Display1
        ...     -> - แสดง Text ที่ส่งมา"

        Login COA
        Create Request
        Click Need Approve Menu
        Cilck Category List
        Check SUBJECT

Regression Test COA - Need Approve_natnu090621_21
        [Tags]      COA_NeedApprove_Web_natnu090621_21
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3.เลือกที่รายการ Category 
        ...     4. นำเมาส์ไปกดที่รายการข้อมูลที่รอการ Approve
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบการทำงาน เมื่อเลือกที่รายการข้อมูลที่รอการ Approve
        ...     -> - แสดงหน้าจอ Need Approve : Detail ของรายการที่ข้อมูลที่เลือกไว้"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List

Regression Test COA - Need Approve_natnu090621_22
        [Tags]      COA_NeedApprove_Web_natnu090621_22
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3.เลือกที่รายการ Category 
        ...     4. นำเมาส์ไปกดที่ "Click to load more."
        ...    EXPECTED RESULT: 
        ...         "ตรวจสอบการทำงาน เมื่อกดที่ ""Click to load more.""
        ...         -> - แสดงรายการข้อมูลที่รอการ Approve/Reject เพิ่มขึ้นอีก 10 รายการ "
        Login COA
        Click Need Approve Menu
        Cilck Category List
        verify Clickload more
Regression Test COA - Need Approve_natnu090621_23
        [Tags]      COA_NeedApprove_Web_natnu090621_23
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบหน้าจอ Need Approve (Detail)
        ...     ->  - หน้าจอ Need Approve (Detail) ประกอบด้วยส่วนต่าง ๆ ดังนี้
        ...      - ส่วนของแถบเมนูด้านข้างซ้าย 
        ...      - ส่วนของ Need Approve (Detail)"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Validate List Chart Should Be Visible :   ${list_Need_Approve_detail}

Regression Test COA - Need Approve_natnu090621_24
        [Tags]      COA_NeedApprove_Web_natnu090621_24
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...        
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบส่วนของ Need Approve (Detail)
        ...     -> - แสดงข้อความ ""Need Approve"" (ตัวหนา สีดำ) 
        ...     - แสดงผลไอคอน AIS ที่มุมด้านขวา
        ...     - แสดงส่วนของการแสดงข้อมูล Detail" 
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Verify Icon and Text
Regression Test COA - Need Approve_natnu090621_25
        [Tags]      COA_NeedApprove_Web_natnu090621_25
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. ตรวจสอบข้อมูล Detail
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (Detail)
        ...      - การแสดงผลในส่วนของการแสดงข้อมูล Detail
        ...     -> -  แสดงผลข้อความ ""< Detail""  (แสดงเป็นตัวอักษรสีเขียว, สามารถกดได้)
        ...     - แสดงข้อมูลของรายการที่รอการ Approve/Reject "
            
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Verify Detail
        
Regression Test COA - Need Approve_natnu090621_26
        [Tags]      COA_NeedApprove_Web_natnu090621_26
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. ตรวจสอบข้อมูล Detail
        ...     6. คลิก < Detail
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (Detail)
        ...      - การทำงานเมื่อกดที่ "" < Detail""
        ...     -> - แสดงหน้าจอ ""Need Approve - List Request""
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Verify Left Menu and detail

Regression Test COA - Need Approve_natnu090621_27
        [Tags]      COA_NeedApprove_Web_natnu090621_27
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. ตรวจสอบข้อมูลรายการที่รอการ Approve/Reject
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบส่วนของการแสดงข้อมูล Need Approve (Detail)
        ...      - การแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...     -> - แสดงข้อมูลของรายการที่รอการ Approve/Reject โดยมีรายละเอียดดังนี้
        ...      - Profile Pic ของผู้ส่ง (Submitted user)
        ...      - Title ของรายการ
        ...      - ชื่อและนามสกุลของผู้ส่ง
        ...      - SLA Start date
        ...      - SLA End date
        ...      - Text Display1
        ...      - Text Display2
        ...      - Text Display3
        ...      - Approved by 
        ...      - Next Approver by
        ...      - Line Approve
        ...      - Attach file
        ...      - Reason
        ...      - Description#1
        ...      - Description#2
        ...      - ปุ่ม 'Approve'
        ...      - ปุ่ม 'Reject'"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Validate Catagory List Should Be Visible :      ${Element_Deltial}

Regression Test COA - Need Approve_natnu090621_28
        [Tags]      COA_NeedApprove_Web_natnu090621_28
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. ตรวจสอบข้อมูล Line Approve 
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ Line Approve 
        ...     -> -แสดงชื่อนามสกุลของผู้ส่ง Line Approve คนแรก
        ...         -แสดงลำดับการ Approve 
        ...     -แต่ละลำดับการ Approve จะแสดง ชื่อ ตำแหน่ง สถานะการ Approve เวลาที่ทำการ Approve 
        ...     -ผู้ส่ง Line Approver คนแรก และลำดับสุดท้าย จะแสดงแค่ ชื่อ"

        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Validate List Chart Should Be Visible :   ${list_Approved}


Regression Test COA - Need Approve_natnu090621_29
        [Tags]      COA_NeedApprove_Web_natnu090621_29
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. ตรวจสอบข้อมูล Line Approve 
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ Line Approve ส่วนของสานะของการ Approve กรณี Approve
        ...     -> - เครื่องหมาย ✓ หน้าวันที่เวลาที่ Approve"

        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Validate List Chart Should Be Visible :   ${list_case_Approved}

Regression Test COA - Need Approve_natnu090621_30
        [Tags]      COA_NeedApprove_Web_natnu090621_30
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ Line Approver ส่วนของสานะของการ Approve กรณี ยังไม่ Approve
        ...     -> - แสดง icon นาฬิกา และเป็นข้อความสีเทา"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List

Regression Test COA - Need Approve_natnu090621_31
        [Tags]      COA_NeedApprove_Web_natnu090621_31
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. คลิกที่ Attach file
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ Attach file
        ...     ->- แสดงแถบพื้นหลังสำหรับการแสดงผลเป็นสีเทา
        ...     - แสดง Icon ของประเภทไฟล์ที่แนบไว้ (DOC , XLS, PDF)
        ...     - แสดงชื่อไฟล์และนามสกุลของไฟล์ เป็นตัวอักษรสีขาว
        ...     - แสดงไฟล์ได้สูงสุด 3 ไฟล์ (โดยเริ่มต้นที Icon และต่อด้วยชื่อไฟล์)"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Validate Catagory List Should Be Visible :      ${Element_Attachfile}
        veify color text filename

Regression Test COA - Need Approve_natnu090621_32          
        [Tags]      COA_NeedApprove_Web_natnu090621_32
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. คลิกที่ Attach file
        ...    EXPECTED RESULT:   
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...     - ที่ Attach file กรณี ไม่พบไฟล์ที่แนบมา
        ...     -> - แสดงหน้า  #(parturl)/coa/OpenAttechFile/ViewFile ขึ้นมา
        ...     -  แสดงรูปภาพ ""SORRY!…
        ...                 We can't find the file. Please contact COA admin.""
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Click File

Regression Test COA - Need Approve_natnu090621_33
        [Tags]      COA_NeedApprove_Web_natnu090621_33
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. คลิกที่ Attach file
        ...    EXPECTED RESULT:      
        ...     "ตรวจสอบการแสดงผล  URL ของ Attach File
        ...      - เมื่อกด Attach file กรณี พบไฟล์ที่แนบมา
        ...     -> - ไม่แสดง Path ไฟล์ และ User_ID
        ...        แสดงผลแค่   #(parturl)/coa/OpenAttechFile/ViewFile"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Click and Verify fil URL
        
Regression Test COA - Need Approve_natnu090621_34
        [Tags]      COA_NeedApprove_Web_natnu090621_34
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. คลิกที่ Reason
        ...    EXPECTED RESULT:    
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ Reason
        ...     -> - แสดงผลเป็น Drop Down List
        ...     - มีค่าเริ่มต้นเป็น ""Select Reason…""
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Select Reason
Regression Test COA - Need Approve_natnu090621_35
        [Tags]      COA_NeedApprove_Web_natnu090621_35
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. เลือก Reason
        ...     6. ระบุหรือไม่ระบุ Description#1
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ Description#1
        ...     -> - แสดงผลเป็น Textbox
        ...     - มีค่าเริ่มต้นเป็นค่าว่าง
        ...     - กรอกข้อมูลได้สูงสุด 500 ตัวอักษร"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Select Reason
        Input Charecter in Input Search     ${input_descript1}   ${550}     A
        Verify Should Be Length :   ${input_descript1}  ${500}


Regression Test COA - Need Approve_natnu090621_36
        [Tags]      COA_NeedApprove_Web_natnu090621_36
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. เลือก Reason
        ...     6. ระบุหรือไม่ระบุ Description#2
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ Description#2
        ...     -> - แสดงผลเป็น Textbox
        ...     - มีค่าเริ่มต้นเป็นค่าว่าง
        ...     - กรอกข้อมูลได้เฉพาะตัวเลขจำนวนเต็ม (ไม่มีจุดทศนิยม)
        ...     - กรอกข้อมูลได้สูงสุด 9 ตัวอักษร" 
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Select Reason
        Input Charecter in Input Search     ${input_descript2}   ${20}     1
        Verify Should Be Length :   ${input_descript2}  ${9}


Regression Test COA - Need Approve_natnu090621_37
        [Tags]      COA_NeedApprove_Web_natnu090621_37
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     
        ...    EXPECTED RESULT:  
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ ปุ่ม 'Approve'
        ...     -> - แสดงข้อความเป็น ""  ✓ Approve""
        ...     - แสดงข้อความสีขาว พื้นปุ่มสีเขียว
        ...     - แสดงผลชิดขวา (ก่อนปุ่ม 'Reject')"     
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List     
        Verify Approve btn
Regression Test COA - Need Approve_natnu090621_38
        [Tags]      COA_NeedApprove_Web_natnu090621_38
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบการแสดงผลข้อมูลของรายการที่รอการ Approve/Reject
        ...      - ที่ ปุ่ม 'Reject
        ...     -> - แสดงข้อความเป็น "" X Reject""
        ...     - แสดงข้อความสีขาว พื้นปุ่มสีแดง
        ...     - แสดงผลชิดขวา (ต่อจากปุ่ม 'Approve')"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List     
        Verify Reject btn

Regression Test COA - Need Approve_natnu090621_39
        [Tags]      COA_NeedApprove_Web_natnu090621_39
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     Payout Rating Result
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. เลือกหรือไม่เลือก Reason
        ...     6. ระบุหรือไม่ระบุ Description#1
        ...     7. ระบุหรือไม่ระบุ Description#2
        ...     8. กดปุ่ม Approve
        ...     9. กดปุ่ม "OK" ใน Popup 'Confirm'
        ...    EXPECTED RESULT: 
        ...     "ตรวจสอบส่วนของ Need Approve (Detail)
        ...      - การทำงานเมื่อกดปุ่ม "" ✓ Approve""
        ...     -> - แสดง Popup ""Confirm""  (ตัวอักษรสีขาว หัวป๊อบอัพสีน้ำเงิน และมีปุ่มกากบาทสำหรับปิด) ประกอบด้วย
        ...      - ข้อความ ""Please Confirm To Submit Approve.""
        ...      - ปุ่ม ""Cancel"" (ปุ่มสีเทา ตัวอั้กษรสีดำ)
        ...      - ปุ่ม ""OK"" (ปุ่มสีเขียว ตัวอักษรสีขาว)"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        #Approve

Regression Test COA - Need Approve_natnu090621_40
        [Tags]      COA_NeedApprove_Web_natnu090621_40
        [Documentation]
        ...     TEST DESCRIPTION:
        ...    COA_NeedApprove_Web
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. เลือกหรือไม่เลือก Reason
        ...     6. ระบุหรือไม่ระบุ Description#1
        ...     7. ระบุหรือไม่ระบุ Description#2
        ...     8. กดปุ่ม Approve
        ...     9. กดปุ่ม "OK" ใน Popup 'Confirm'
        ...    EXPECTED RESULT:  
        ...     "ตรวจสอบการทำงานเมื่อกดปุ่ม "" ✓ Approve"" แล้ว
        ...      - กรณี กดปุ่ม ""OK"" ใน Popup ""Confirm""
        ...     -> - แสดง Popup ""Complete""  (ตัวอักษรสีขาว หัวป๊อบอัพสีเขียว และมีปุ่มกากบาทสำหรับปิด) ประกอบด้วย
        ...      - ข้อความ ""APPROVED""
        ...      - ปุ่ม ""OK"" (ปุ่มสีเขียว ตัวอักษรสีขาว)
        ...      - ปิด Popup 'Complete'
        ...      - แสดงหน้าจอ Need Approve - List Request"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Approve

Regression Test COA - Need Approve_natnu090621_41
        [Tags]      COA_NeedApprove_Web_natnu090621_41
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     COA_NeedApprove_Web
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. เลือก Reason
        ...     6. ระบุหรือไม่ระบุ Description#1
        ...     7. ระบุหรือไม่ระบุ Description#2
        ...     8. คลิกปุ่ม Reject    
        ...    EXPECTED RESULT:
        ...     "ตรวจสอบส่วนของ Need Approve (Detail)
        ...      - การทำงานเมื่อกดปุ่ม "" X Reject"" 
        ...     -> - แสดง Popup ""Confirm""  (ตัวอักษรสีขาว หัวป๊อบอัพสีน้ำเงิน และมีปุ่มกากบาทสำหรับปิด) ประกอบด้วย
        ...      - ข้อความ ""Please Confirm To Submit Reject.""
        ...      - ปุ่ม ""Cancel"" (ปุ่มสีเทา ตัวอั้กษรสีดำ)
        ...      - ปุ่ม ""OK"" (ปุ่มสีเขียว ตัวอักษรสีขาว)"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Select Reason
        Click Reject

Regression Test COA - Need Approve_natnu090621_42
        [Tags]      COA_NeedApprove_Web_natnu090621_42
        [Documentation]
        ...     TEST DESCRIPTION:
        ...     COA_NeedApprove_Web
        ...     TEST STEPS:
        ...     1. Login เข้าสู่ระบบ COA
        ...     2. เลือกเมนู Need Approve จากเมนูด้านซ้าย
        ...     3. เลือกที่รายการ Category 
        ...     4. เลือกรายการที่รอการ Approve อยู่
        ...     5. เลือก Reason
        ...     6. ระบุหรือไม่ระบุ Description#1
        ...     7. ระบุหรือไม่ระบุ Description#2
        ...     8. คลิกปุ่ม Reject
        ...     9. กดปุ่ม ""OK"" ใน Popup 'Confirm'"   
        ...    EXPECTED RESULT:  
        ...     "ตรวจสอบการทำงานเมื่อกดปุ่ม "" X Reject""  แล้ว
        ...      - กรณี กดปุ่ม ""OK"" ใน Popup ""Confirm"" โดยที่เลือกข้อมูล Reason แล้ว
        ...     -> - แสดง Popup ""Complete""  (ตัวอักษรสีขาว หัวป๊อบอัพสีเขียว และมีปุ่มกากบาทสำหรับปิด) ประกอบด้วย
        ...      - ข้อความ ""REJECTED""
        ...      - ปุ่ม ""OK"" (ปุ่มสีเขียว ตัวอักษรสีขาว)
        ...      - ปิด Popup 'Complete'
        ...      - แสดงหน้าจอ Need Approve - List Request"
        Login COA
        Click Need Approve Menu
        Cilck Category List
        Click Request List
        Select Reason
       


