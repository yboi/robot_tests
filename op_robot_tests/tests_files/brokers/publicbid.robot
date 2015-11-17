*** Settings ***
Library  Selenium2Screenshots
Library  String
Library  DateTime

*** Variables ***
${mail}          test@mail.com
${telephone}     +380976535447
${fake_name}     Оніч Прокрув Ійов
${locator.title}                                               id=mForm:data:name
${locator.description}                                         id=mForm:data:desc
${locator.procuringEntity.name}                                id=mForm:data:orgName
${locator.value.amount}                                        id=mForm:data:budget
${locator.tenderId}                                            id=mForm:nBid
${locator.tenderPeriod.startDate}                              id=mForm:data:dSPr_input
${locator.tenderPeriod.endDate}                                id=mForm:data:dEPr_input
${locator.enquiryPeriod.endDate}                               id=mForm:data:dEA_input
${locator.items[0].description}                                id=mForm:data:subject0
${locator.items[0].deliveryDate.endDate}                       id=mForm:data:delDE0_input
${locator.items[0].deliveryLocation.latitude}                  id=mForm:data:delLoc0
${locator.items[0].deliveryLocation.longitude}                 id=mForm:data:delLoc0
${locator.items[0].classification.scheme}                      xpath=//label[@for="mForm:data:cCpv0_input"]
${locator.items[0].classification.id}                          id=mForm:data:cCpv0_input
${locator.items[0].classification.description}                 id=mForm:data:nCpv0
${locator.items[0].additionalClassifications[0].scheme}        xpath=//label[@for="mForm:data:cDkpp0_input"]
${locator.items[0].additionalClassifications[0].id}            id=mForm:data:cDkpp0_input
${locator.items[0].additionalClassifications[0].description}   id=mForm:data:nDkpp0
${locator.items[0].unit.code}                                  id=mForm:data:unit0_input
${locator.items[0].quantity}                                   id=mForm:data:amount0
${locator.items[0].unit.name}                                  id=mForm:data:unit0_input
${locator.questions[0].title}                                  xpath=//tr[@class='ui-widget-content ui-datatable-even'][last()]//self::span
${locator.questions[0].description}                            xpath=//tr[@class='ui-widget-content ui-datatable-even'][last()]/td[1]
${locator.questions[0].date}                                   xpath=//tr[@class='ui-widget-content ui-datatable-even'][last()]/td[2]
${locator.questions[0].answer}                                 xpath=//tbody[@id='mForm:data_data']/tr[@class='ui-widget-content ui-datatable-odd']/td[1]
${locator.items[0].deliveryLocation.streetAddress}             id=mForm:data:delAdr0
${locator.minimalStep.amount}                                  id=mForm:data:step

*** Keywords ***
Підготувати клієнт для користувача
  [Arguments]  @{ARGUMENTS}
  [Documentation]  Відкрити брaвзер, створити обєкт api wrapper, тощо
  ...      ${ARGUMENTS[0]} ==  username
  Open Browser   ${USERS.users['${ARGUMENTS[0]}'].homepage}   ${USERS.users['${username}'].browser}   alias=${ARGUMENTS[0]}
  Set Window Size   @{USERS.users['${ARGUMENTS[0]}'].size}
  Set Window Position   @{USERS.users['${ARGUMENTS[0]}'].position}
#  Run Keyword If   '${username}' != 'Publicbid_Viewer'   Login

#login
  Sleep  2
  Click Element             xpath=//*[text()='Реєстрація/Вхід']
  Sleep  2
  Input text   id=mForm:email      ${USERS.users['${username}'].login}
  Sleep  2
  Input text   id=mForm:pwd      ${USERS.users['${username}'].password}
  Click Button   id=mForm:login

Створити тендер
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tender_data
  ${file_path}=          local_path_to_file    TestDocument.docx
  ${items}=              Get From Dictionary   ${INITIAL_TENDER_DATA.data}               items
  ${title}=              Get From Dictionary   ${INITIAL_TENDER_DATA.data}               title
  ${description}=        Get From Dictionary   ${INITIAL_TENDER_DATA.data}               description
  ${budget}=             Get From Dictionary   ${INITIAL_TENDER_DATA.data.value}         amount
  ${step_rate}=          Get From Dictionary   ${INITIAL_TENDER_DATA.data.minimalStep}   amount
  ${countryName}=        Get From Dictionary   ${INITIAL_TENDER_DATA.data.procuringEntity.address}       countryName
  ${delivery_end_date}=  Get From Dictionary   ${items[0].deliveryDate}   endDate
  ${delivery_end_date}=  convert_date_to_prom_format   ${delivery_end_date}
  ${unit}=               Get From Dictionary   ${items[0].unit}                   name
  ${cpv_id}=             Get From Dictionary   ${items[0].classification}         id
  ${cpv_id_1}=           Get Substring    ${cpv_id}   0   3
  ${item0_desc}=         Get From Dictionary   ${items[0]}   description
  ${dkpp_id}=            Get From Dictionary   ${items[0].additionalClassifications[0]}  id
  ${code}=               Get From Dictionary   ${items[0].unit}          code_ru
  ${quantity}=           Get From Dictionary   ${items[0]}                        quantity
  ${name}=               Get From Dictionary   ${INITIAL_TENDER_DATA.data.procuringEntity.contactPoint}       name
  ${latitude}=           Get From Dictionary   ${items[0].deliveryLocation}    latitude
  ${longitude}=          Get From Dictionary   ${items[0].deliveryLocation}    longitude
  ${streetAddress}       Get From Dictionary   ${items[0].deliveryAddress}     streetAddress
  ${deliveryDate}        Get From Dictionary   ${items[0].deliveryDate}        endDate
  ${deliveryDate}        convert_date_for_publicbid_Delivery       ${deliveryDate}
  ${start_date}=         Get From Dictionary   ${INITIAL_TENDER_DATA.data.tenderPeriod}   startDate
  ${start_date}=         convert_date_for_publicbid   ${start_date}
  ${end_date}=           Get From Dictionary   ${INITIAL_TENDER_DATA.data.tenderPeriod}   endDate
  ${end_date}=           convert_date_for_publicbid   ${end_date}
  ${enquiry_end_date}=   Get From Dictionary         ${INITIAL_TENDER_DATA.data.enquiryPeriod}   endDate
  ${enquiry_end_date}=   convert_date_for_publicbid   ${enquiry_end_date}

  Selenium2Library.Switch Browser     ${ARGUMENTS[0]}
  Wait Until Page Contains Element    xpath=//*[contains(@class, 'ui-button-text ui-c')][./text()='Нова закупівля']   10
  Click Element                       xpath=//*[contains(@class, 'ui-button-text ui-c')][./text()='Нова закупівля']
  Wait Until Page Contains Element    id=mForm:data:name
  Input text                          id=mForm:data:name     ${title}
  Input text                          id=mForm:data:desc     ${description}
  Input text                          id=mForm:data:budget   ${budget}
  Input text                          id=mForm:data:step     ${step_rate}
  Click Element                       xpath=//*[@id='mForm:data:vat']/tbody/tr/td[1]//span
  Input text                          id=mForm:data:dEPr_input    ${delivery_end_date}
  Click Element                       id=mForm:data:cKind_label
  Click Element                       xpath=//div[@id='mForm:data:cKind_panel']//li[3]
  Input text                          id=mForm:data:cCpvGr_input      ${cpv_id_1}
  Wait Until Page Contains Element    xpath=//td[contains(., '${cpv_id_1}')]   10
  Click Element                       xpath=.//*[@id='mForm:data:cCpvGr_panel']/table/tbody/tr/td[2]/span
  Input text                          id=mForm:data:subject0    ${item0_desc}
  Input text                          id=mForm:data:cCpv0_input   ${cpv_id}
  Wait Until Page Contains Element    xpath=//div[@id='mForm:data:cCpv0_panel']//td[1]/span   10
  Click Element                       xpath=//div[@id='mForm:data:cCpv0_panel']//td[1]/span
  Input text                          id=mForm:data:unit0_input    ${code}
  Wait Until Page Contains Element    xpath=//div[@id='mForm:data:unit0_panel']//tr/td[1]   10
  Click Element                       xpath=//div[@id='mForm:data:unit0_panel']//tr/td[1]
  Input text                          id=mForm:data:amount0   ${quantity}
  Input text                          id=mForm:data:cDkpp0_input    ${dkpp_id}
  Wait Until Page Contains Element    xpath=//div[@id='mForm:data:cDkpp0_panel']//tr[1]/td[2]/span   10
  Click Element                       xpath=//div[@id='mForm:data:cDkpp0_panel']//tr[1]/td[2]/span
  Input text                          id=mForm:data:rName    ${name}
  Input text                          id=mForm:data:rPhone    ${telephone}
  Input text                          id=mForm:data:rMail   ${mail}
  Choose File                         id=mForm:data:docFile_input     ${file_path}
  Input text                          id=mForm:data:dEA_input       ${enquiry_end_date}
  Input text                          id=mForm:data:dSPr_input      ${start_date}
  Input text                          id=mForm:data:dEPr_input      ${end_date}
  Input text                          id=mForm:data:delDS0_input    ${deliveryDate}
  Input text                          id=mForm:data:delDE0_input    ${deliveryDate}
  Input text                          id=mForm:data:delAdr0         ${streetAddress}
  Input text                          id=mForm:data:delLoc0      ${latitude} ${longitude}
  Sleep  2
  Run Keyword if   '${mode}' == 'multi'   Додати багато предметів   items
  Click Element                       id=mForm:bSave
  Sleep  20
  Click Element                       xpath=(//button[@type="submit"])[5]
  Wait Until Page Contains Element    xpath=(//*[text()="Оголосити"])[3]   10
  Click Element                       xpath=(//*[text()="Оголосити"])[3]
  Wait Until Page Contains            Картка закупівлі № UA   20
  ${tender_UAid}=  Get Text           id=mForm:nBid
  ${tender_UAid}=  Get Substring     ${tender_UAid}  19
  Run Keyword if   '${tender_UAid}' == ''   Fail   Ua_id порожній. Перевірте чи завантажується файл. Розміщення файлу прив"язане до папок проекту.
  [return]  ${tender_UAid}

Додати предмет
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  items
  ...      ${ARGUMENTS[1]} ==  ${INDEX}
  ${dkpp_desc1}=     Get From Dictionary   ${items[1].additionalClassifications[0]}   description
  ${dkpp_id11}=      Get From Dictionary   ${items[1].additionalClassifications[0]}  id
  ${dkpp_desc2}=     Get From Dictionary   ${items[2].additionalClassifications[0]}   description
  ${dkpp_id2}=       Get From Dictionary   ${items[2].additionalClassifications[0]}  id
  ${dkpp_desc3}=     Get From Dictionary   ${items[3].additionalClassifications[0]}   description
  ${dkpp_id3}=       Get From Dictionary   ${items[3].additionalClassifications[0]}  id
#1
  Click Element                      xpath=//div[@class='ui-accordion-content ui-helper-reset ui-widget-content']/button
  Wait Until Page Contains Element   id=mForm:data:subject1   10
  Input text                         id=mForm:data:subject1    ${dkpp_desc1}
  Input text                         id=mForm:data:cCpv1_input   ${cpv_id}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:cCpv1_panel']/table/tbody/tr/td[1]/span   10
  Click Element                      xpath=//div[@id='mForm:data:cCpv1_panel']/table/tbody/tr/td[1]/span
  Input text                         id=mForm:data:unit1_input    ${code}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:unit1_panel']/table/tbody/tr/td[1]   10
  Click Element                      xpath=//div[@id='mForm:data:unit1_panel']/table/tbody/tr/td[1]
  Input text                         id=mForm:data:amount1   ${quantity}
  Input text                         id=mForm:data:cDkpp1_input    ${dkpp_id11}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:cDkpp1_panel']/table/tbody/tr/td[1]/span   10
  Click Element                      xpath=//div[@id='mForm:data:cDkpp1_panel']/table/tbody/tr/td[1]/span
#2
  Click Element                      xpath=//div[@class='ui-accordion-content ui-helper-reset ui-widget-content']/button
  Wait Until Page Contains Element   id=mForm:data:subject2   10
  Input text                         id=mForm:data:subject2    ${dkpp_desc2}
  Input text                         id=mForm:data:cCpv2_input   ${cpv_id}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:cCpv2_panel']/table/tbody/tr/td[1]/span   10
  Click Element                      xpath=//div[@id='mForm:data:cCpv2_panel']/table/tbody/tr/td[1]/span
  Input text                         id=mForm:data:unit2_input    ${code}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:unit2_panel']/table/tbody/tr/td[1]   10
  Click Element                      xpath=//div[@id='mForm:data:unit2_panel']/table/tbody/tr/td[1]
  Input text                         id=mForm:data:amount2   ${quantity}
  Input text                         id=mForm:data:cDkpp2_input    ${dkpp_id2}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:cDkpp2_panel']/table/tbody/tr/td[1]/span   10
  Click Element                      xpath=//div[@id='mForm:data:cDkpp2_panel']/table/tbody/tr/td[1]/span
#3
  Click Element                      xpath=//div[@class='ui-accordion-content ui-helper-reset ui-widget-content']/button
  Wait Until Page Contains Element   id=mForm:data:subject3   10
  Input text                         id=mForm:data:subject3    ${dkpp_desc3}
  Input text                         id=mForm:data:cCpv3_input   ${cpv_id}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:cCpv3_panel']/table/tbody/tr/td[1]/span   10
  Click Element                      xpath=//div[@id='mForm:data:cCpv3_panel']/table/tbody/tr/td[1]/span
  Input text                         id=mForm:data:unit3_input    ${code}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:unit3_panel']/table/tbody/tr/td[1]   10
  Click Element                      xpath=//div[@id='mForm:data:unit3_panel']/table/tbody/tr/td[1]
  Input text                         id=mForm:data:amount3   ${quantity}
  Input text                         id=mForm:data:cDkpp3_input    ${dkpp_id3}
  Wait Until Page Contains Element   xpath=//div[@id='mForm:data:cDkpp3_panel']/table/tbody/tr/td[1]/span   10
  Click Element                      xpath=//div[@id='mForm:data:cDkpp3_panel']/table/tbody/tr/td[1]/span

Пошук тендера по ідентифікатору
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tenderId
  Switch browser   ${ARGUMENTS[0]}
  sleep  3
  Wait Until Page Contains Element   xpath=//td[@class='ui-panelgrid-cell banner_menu_item']/a[./text()='Закупівлі']   20
  Click Element                      xpath=//td[@class='ui-panelgrid-cell banner_menu_item']/a[./text()='Закупівлі']
  Sleep  3
  Wait Until Page Contains Element   xpath=(//div[@class='ui-column-customfilter'])[1]/input   20
  Input Text                         xpath=(//div[@class='ui-column-customfilter'])[1]/input   ${ARGUMENTS[1]}
  Sleep  3
  Click Element                      id=mForm:datalist:nBidClmn
  Sleep  5
  Click Element                      xpath=//div[@class='ui-row-toggler ui-icon ui-icon-circle-triangle-e']
  sleep  10
  Run keyword and ignore error   Click Element   xpath=//div[@class='ui-row-toggler ui-icon ui-icon-circle-triangle-e']
  sleep  1
  Capture Page Screenshot


Завантажити документ
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...    ${ARGUMENTS[0]} =  username
  ...    ${ARGUMENTS[1]} =  ${file_path}
  ...    ${ARGUMENTS[2]} =  ${TENDER_UAID}
  ${filepath}=      local_path_to_file   TestDocument.docx
  ${description}=   Get From Dictionary   ${INITIAL_TENDER_DATA.data}               description
  Selenium2Library.Switch Browser   ${ARGUMENTS[0]}
  publicbid.Пошук тендера по ідентифікатору     ${ARGUMENTS[0]}    ${ARGUMENTS[2]}
  Sleep  10
  Click Element                      xpath=//span[@id='mForm:datalist:0:gButt1']/button[1]
  Wait Until Page Contains Element   id=mForm:data:docFile_input
  Choose File                        id=mForm:data:docFile_input     ${file_path}
  sleep  1
  Input Text                         id=mForm:data:docAdjust         ${description}
  Wait Until Page Contains Element   id=mForm:bSave   10
  Click Element                      id=mForm:bSave
  Capture Page Screenshot

Подати скаргу
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...    ${ARGUMENTS[0]} =  username
  ...    ${ARGUMENTS[1]} =  ${TENDER_UAID}
  ...    ${ARGUMENTS[2]} =  complaintsId
  ${complaint}=        Get From Dictionary  ${ARGUMENTS[2].data}  title
  ${description}=      Get From Dictionary  ${ARGUMENTS[2].data}  description
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  publicbid.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Sleep  2
  Click Button    xpath=//span[@id='mForm:datalist:0:gButt1']/button[3]
  Sleep  2
  Click Button    xpath=//div[@class='ui-panel-footer ui-widget-content']/button[1]
  Sleep  2
  Input Text      id=mForm:data:title      ${complaint}
  Input Text      id=mForm:data:desc       ${description}
  Click Element   xpath=//span[@class='ui-icon ui-icon-triangle-1-s ui-c']
  Click Element   xpath=(//li)[2]
  Input Text      id=mForm:data:rMail          ${mail}
  Input Text      id=mForm:data:rPhone         ${telephone}
  Input Text      id=mForm:data:rName          ${fake_name}
  Sleep  2
  Click Button    xpath=//span[@id='mForm:gButt']/button[2]
  Sleep  5
#  ${Error_count}   Get Matching Xpath Count   xpath=//*[./text()='Загальна помилка'
#  ${Error_count}   Convert To Number   ${Error_count}
#  Run keyword if   '${Error_count}' > 0   Run keywords   Capture Page Screenshot   AND   Reload Page   AND   Fail  App contains bug
  Wait Until Page Contains  Збережено!   40
  Sleep  3
  Capture Page Screenshot

порівняти скаргу
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...    ${ARGUMENTS[0]} =  username
  ...    ${ARGUMENTS[1]} =  ${TENDER_UAID}
  ...    ${ARGUMENTS[2]} =  complaintsId
  ${complaint}=        Get From Dictionary  ${ARGUMENTS[2].data}  title
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  publicbid.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Sleep  2
  Click Element    xpath=//span[@id='mForm:datalist:0:gButt1']//*[./text()='Скарги']
  Sleep  5
  Wait Until Page Contains           ${complaint}   10
  Capture Page Screenshot

Внести зміни в тендер
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  id
  ...      ${ARGUMENTS[2]} ==  fieldname
  ...      ${ARGUMENTS[3]} ==  fieldvalue
  ${ADDITIONAL_DATA}=   prepare_Front_end_initial_data  ${BROKERS['${USERS.users['${tender_owner}'].broker}'].period_interval}   single
  ${items}=         Get From Dictionary   ${INITIAL_TENDER_DATA.data}               items
  ${description}=   Get From Dictionary   ${items[0]}         description
  publicbid.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Sleep  3
  Click Element                      xpath=//span[@id='mForm:datalist:0:gButt1']/button[1]
  Sleep  5
  Input Text                         id=mForm:data:desc   ${description}
  Click Element                      id=mForm:bSave
  Wait Until Page Contains Element   Збережено!   10

додати предмети закупівлі
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} =  username
  ...      ${ARGUMENTS[1]} =  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} =  3
  ${ADDITIONAL_DATA}=  prepare_Front_end_initial_data   ${BROKERS['${USERS.users['${tender_owner}'].broker}'].period_interval}   multi
  ${items}=         Get From Dictionary   ${INITIAL_TENDER_DATA.data}               items
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  Run keyword if   '${TEST NAME}' == 'Можливість додати позицію закупівлі в тендер'   додати позицію
  Run keyword if   '${TEST NAME}' != 'Можливість додати позицію закупівлі в тендер'   видалити позиції

додати позицію
  Fail  Не реалізований функціонал

видалити позиції
  Fail  Не реалізований функціонал

Отримати тест із поля і показати на сторінці
  [Arguments]   ${fieldname}
  sleep  3
#  відмітити на сторінці поле з тендера   ${fieldname}   ${locator.${fieldname}}
  ${return_value}=   Get Text  ${locator.${fieldname}}
  [return]  ${return_value}

Отримати значення із поля і показати на сторінці
  [Arguments]   ${fieldname}
  ${return_value}=   Get Value  ${locator.${fieldname}}
  [return]  ${return_value}

отримати інформацію із тендера
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  fieldname
  Switch browser   ${ARGUMENTS[0]}
  ${return_value}=  run keyword  отримати інформацію про ${ARGUMENTS[1]}
  [return]  ${return_value}

отримати інформацію про title
  Wait Until Page Contains   Відкрити детальну інформацію   10
  Click Element              xpath=//span[@id='mForm:datalist:0:gButt1']//*[./text()='Відкрити детальну інформацію']
  Wait Until Page Contains   Картка закупівлі № UA          10
  ${return_value}=   Отримати тест із поля і показати на сторінці   title
  [return]  ${return_value}

отримати інформацію про description
  ${return_value}=   Отримати тест із поля і показати на сторінці   description
  [return]  ${return_value}

отримати інформацію про value.amount
  ${return_value}=   Отримати значення із поля і показати на сторінці   value.amount
  ${return_value}=   Convert To Number   ${return_value}
  [return]  ${return_value}

отримати інформацію про tenderId
  ${return_value}=   Отримати тест із поля і показати на сторінці   tenderId
  ${return_value}=   Get Substring   ${return_value}  19
  [return]  ${return_value}

отримати інформацію про procuringEntity.name
  ${return_value}=   Отримати тест із поля і показати на сторінці   procuringEntity.name
  [return]  ${return_value}

отримати інформацію про enquiryPeriod.startDate
  Fail  Немає такого поля при перегляді

Change_day_to_month
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]}  ==  date
  ${day}=   Get Substring   ${ARGUMENTS[0]}   0   2
  ${month}=   Get Substring   ${ARGUMENTS[0]}  3   6
  ${year}=   Get Substring   ${ARGUMENTS[0]}   5
  ${return_value}=   Convert To String  ${month}${day}${year}
  [return]  ${return_value}

отримати інформацію про enquiryPeriod.endDate
  ${return_value}=   Отримати значення із поля і показати на сторінці   enquiryPeriod.endDate
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]  ${return_value}

отримати інформацію про tenderPeriod.startDate
  ${return_value}=   Отримати значення із поля і показати на сторінці   tenderPeriod.startDate
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]  ${return_value}

отримати інформацію про tenderPeriod.endDate
  ${return_value}=   Отримати значення із поля і показати на сторінці   tenderPeriod.endDate
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]  ${return_value}

отримати інформацію про minimalStep.amount
  ${return_value}=   Отримати значення із поля і показати на сторінці   minimalStep.amount
  ${return_value}=   Convert To Number   ${return_value}
  [return]  ${return_value}

отримати інформацію про items[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].description
  [return]  ${return_value}

отримати інформацію про items[0].deliveryDate.endDate
  Fail  Дата у форматі місяць.рік

отримати інформацію про items[0].deliveryLocation.latitude
  ${return_value}=   Отримати значення із поля і показати на сторінці  items[0].deliveryLocation.latitude
  [return]  ${return_value.split(' ')[0]}

отримати інформацію про items[0].deliveryLocation.longitude
  ${return_value}=   Отримати значення із поля і показати на сторінці  items[0].deliveryLocation.longitude
  [return]  ${return_value.split(' ')[1]}

отримати інформацію про items[0].deliveryAddress.countryName
  Fail  Не реалізований функціонал

отримати інформацію про items[0].deliveryAddress.postalCode
  Fail  Не реалізований функціонал

отримати інформацію про items[0].deliveryAddress.region
  Fail  Не реалізований функціонал

отримати інформацію про items[0].deliveryAddress.locality
  Fail  Не реалізований функціонал

отримати інформацію про items[0].deliveryAddress.streetAddress
  ${return_value}=   Отримати значення із поля і показати на сторінці  items[0].deliveryLocation.streetAddress
  [return]  ${return_value}

отримати інформацію про items[0].classification.scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.scheme
  ${return_value}=   Run keyword if    '${return_value}' == 'Предмет закупівлі за класифікатором CPV. Код*'   Convert To String  CPV
  [return]  ${return_value}

отримати інформацію про items[0].classification.id
  ${return_value}=   Отримати значення із поля і показати на сторінці  items[0].classification.id
  [return]  ${return_value}

отримати інформацію про items[0].classification.description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.description
  [return]  ${return_value}

отримати інформацію про items[0].additionalClassifications[0].scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].scheme
  ${return_value}=   Run keyword if    '${return_value}' == 'Предмет закупівлі за класифікатором ДКПП. Код*'   Convert To String  ДКПП
  [return]  ${return_value}

отримати інформацію про items[0].additionalClassifications[0].id
  ${return_value}=   Отримати значення із поля і показати на сторінці  items[0].additionalClassifications[0].id
  [return]  ${return_value}

отримати інформацію про items[0].additionalClassifications[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].description
  [return]  ${return_value}

отримати інформацію про items[0].unit.code
  ${return_value}=   Отримати значення із поля і показати на сторінці   items[0].unit.code
  ${return_value}=   Run Keyword If   '${return_value}' == 'H87 штуки'   Convert To String   кг.
  [return]  ${return_value}

отримати інформацію про items[0].unit.name
  ${return_value}=   Отримати значення із поля і показати на сторінці   items[0].unit.name
  ${return_value}=   Run Keyword If   '${return_value}' == 'H87 штуки'   Convert To String   кг.
  [return]  ${return_value}

отримати інформацію про items[0].quantity
  ${return_value}=   Отримати значення із поля і показати на сторінці   items[0].quantity
  ${return_value}=   Convert To Number   ${return_value}
  [return]   ${return_value}

Подати цінову пропозицію
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  ${test_bid_data}
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  publicbid.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Sleep  2
  Click Element         xpath=//span[@id='mForm:datalist:0:gButt1']/button[1]
  Sleep  30
  Reload page
  Wait Until Page Contains Element     xpath=//*[text()='Зареєструвати пропозицію']  20
  Click Element                        xpath=//*[text()='Зареєструвати пропозицію']
  Wait Until Page Contains Element     id=mForm:data:amount  10
  Input text    id=mForm:data:amount   5000
  Input text    id=mForm:data:rName    ${fake_name}
  Input text    id=mForm:data:rPhone   ${telephone}
  Input text    id=mForm:data:rMail    ${mail}
  Click Element                        xpath=//span[@id='mForm:gButt1']/button[1]
  Sleep  3
  Click Element                      xpath=//*[text()='Зареєструвати пропозицію']
  Sleep  2
  Click Element                      xpath=//div[@id='mForm:opt1']//span
  Click Element                      xpath=//*[text()='Подати пропозицію']


скасувати цінову пропозицію
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  Wait Until Page Contains Element
  Click Element                  xpath=//td[@class='ui-panelgrid-cell banner_menu_item']//a[./text()='Мій кабінет']
  Wait Until Page Contains Element   xpath=//li[@class='ui-menuitem ui-widget ui-corner-all']//span[./text()='Мої пропозиції']  10
  Click Element                      xpath=//li[@class='ui-menuitem ui-widget ui-corner-all']//span[./text()='Мої пропозиції']
  Wait Until Page Contains Element   xpath=(//div[@class='ui-row-toggler ui-icon ui-icon-circle-triangle-e'])[last()]   10
  Click Element                      xpath=(//div[@class='ui-row-toggler ui-icon ui-icon-circle-triangle-e'])[last()]
  Wait Until Page Contains Element   xpath=//*[text()='Видалити пропозицію']   10
  Click Element                      xpath=//*[text()='Видалити пропозицію']
  Wait Until Page Contains Element   id=mForm:j_idt973   10
  Click Element                      id=mForm:j_idt973


Змінити цінову пропозицію
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  bid
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  DEBUG
  Click Element                  xpath=//td[@class='ui-panelgrid-cell banner_menu_item']//a[./text()='Мій кабінет']
  Sleep  2
  Click Element                  xpath=//li[@class='ui-menuitem ui-widget ui-corner-all']//span[./text()='Мої пропозиції']
  Sleep  2
  Click Element                  xpath=(//div[@class='ui-row-toggler ui-icon ui-icon-circle-triangle-e'])[3]
  Sleep  2
  Run keyword if   '${TEST NAME}' == 'Можливість змінити повторну цінову пропозицію до 50000'     Змінити до 50000
  Run keyword if   '${TEST NAME}' != 'Можливість змінити повторну цінову пропозицію до 10'        Змінити до 10
   sleep  2
  Click Element                  xpath=//span[@class='ui-button-text ui-c'][./text()='Відкрити детальну інформацію']
  Capture Page Screenshot

Змінити до 50000
  Input text      id=mForm:propsRee:2:data:amount    5000

Змінити до 10
  Input text      id=mForm:propsRee:2:data:amount    10

Задати питання
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tenderUaId
  ...      ${ARGUMENTS[2]} ==  questionId
  ${title}=        Get From Dictionary  ${ARGUMENTS[2].data}  title
  ${description}=  Get From Dictionary  ${ARGUMENTS[2].data}  description
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  Reload Page
  publicbid.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Click Element    xpath=//span[@class='ui-button-text ui-c'][./text()='Обговорення']
  sleep  1
  Input Text       xpath=//input[@id='mForm:messT']      ${title}
  sleep  1
  Input Text       xpath=//textarea[@id='mForm:messQ']   ${description}
  Click Element    xpath=//button[@id='mForm:btnQ']
  Capture Page Screenshot

оновити сторінку з тендером
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = tenderUaId
  ${tenderId}=               Convert To String                    ${ARGUMENTS[1]}
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  Reload Page

отримати інформацію про questions[0].title
  sleep  2
  publicbid.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${TENDER['TENDER_UAID']}
  sleep  2
  Click Element        xpath=//span[@class='ui-button-text ui-c'][./text()='Обговорення']
  Sleep  2
  Click Element        xpath=//div[@id='mForm:data_paginator_bottom']/span[5]
  sleep  2
  ${return_value}=   отримати тест із поля і показати на сторінці   questions[0].title
  [return]   ${return_value}

отримати інформацію про questions[0].description
  ${title_description}=   отримати тест із поля і показати на сторінці   questions[0].description
  ${title}=   отримати тест із поля і показати на сторінці   questions[0].title
  ${return_value}   Remove String   ${title_description}   ${title}
  ${return_value}   Get Substring   ${return_value}        1
  [return]   ${return_value}

отримати інформацію про questions[0].date
  ${return_value}=   отримати тест із поля і показати на сторінці   questions[0].date
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]   ${return_value}

Завантажити документ в ставку
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  bid
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  ${file_path}=                  local_path_to_file   TestDocument.docx
  Click Element                  xpath=//td[@class='ui-panelgrid-cell banner_menu_item']//a[./text()='Мій кабінет']
  Sleep  2
  Click Element                  xpath=//li[@class='ui-menuitem ui-widget ui-corner-all']//span[./text()='Мої пропозиції']
  Sleep  2
  Click Element                  xpath=(//div[@class='ui-row-toggler ui-icon ui-icon-circle-triangle-e'])[3]
  Sleep  2
  Click Element                  xpath=//span[@class='ui-button-text ui-c'][./text()='Відкрити детальну інформацію']
  Sleep  2
  Choose File                    id=mForm:data:qFile_input          ${file_path}
  Sleep  2
  Click Element                  xpath=//span[@id='mForm:gButt1']/button[2]
  Capture Page Screenshot

отримати документ
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  bid
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  ${file_path}=        local_path_to_file   TestDocument.docx
  Click Element                  xpath=//td[@class='ui-panelgrid-cell banner_menu_item']//a[./text()='Мій кабінет']
  Sleep  2
  Click Element                  xpath=//li[@class='ui-menuitem ui-widget ui-corner-all']//span[./text()='Мої пропозиції']
  Sleep  2
  Click Element                  xpath=(//div[@class='ui-row-toggler ui-icon ui-icon-circle-triangle-e'])[3]
  Sleep  2
  Click Element                  xpath=//span[@class='ui-button-text ui-c'][./text()='Відкрити детальну інформацію']
  Sleep  2
  Click Element                  xpath=//div[@class='ui-outputpanel ui-widget']/a
  Capture Page Screenshot

Змінити документ в ставці
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  bid
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  ${file_path}=        local_path_to_file   TestDocument.docx
  Click Element                  xpath=//td[@class='ui-panelgrid-cell banner_menu_item']//a[./text()='Мій кабінет']
  Sleep  2
  Click Element                  xpath=//li[@class='ui-menuitem ui-widget ui-corner-all']//span[./text()='Мої пропозиції']
  Sleep  2
  Click Element                  xpath=(//div[@class='ui-row-toggler ui-icon ui-icon-circle-triangle-e'])[3]
  Sleep  2
  Click Element                  xpath=//span[@class='ui-button-text ui-c'][./text()='Відкрити детальну інформацію']
  Sleep  2
  Click Element                  xpath=(//div[@class='ui-outputpanel ui-widget']/button/span[@class='ui-button-text ui-c'])[1]
  Sleep  2
  Choose File             id=mForm:data:qFile_input          ${file_path}
  Sleep  2
  Click Element                  xpath=//span[@id='mForm:gButt1']/button[2]
  Capture Page Screenshot

Відповісти на питання
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} = 0
  ...      ${ARGUMENTS[3]} = answer_data
  ${answer}=     Get From Dictionary  ${ARGUMENTS[3].data}  answer
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  publicbid.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Wait Until Page Contains Element    xpath=//span[@class='ui-button-text ui-c'][./text()='Обговорення']
  Click Element    xpath=//span[@class='ui-button-text ui-c'][./text()='Обговорення']
  Wait Until Page Contains Element    xpath=//*[text()='Відповісти']   10
  Click Element                      xpath=//*[text()='Відповісти']
  Wait Until Page Contains Element   id=mForm:messT   10
  Input text                         id=mForm:messT   Title
  Input text                         id=mForm:messQ   ${answer}
  Click Element    xpath=(//*[text()='Відповісти'])[2]

Отримати інформацію про questions[0].answer
  ${return_value}=   Отримати тест із поля і показати на сторінці   questions[0].answer
  ${return_value}   Remove String   ${return_value}   Title
  ${return_value}   Get Substring   ${return_value}        1
  [return]  ${return_value}