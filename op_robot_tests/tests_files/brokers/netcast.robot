*** Setting ***
Library  Selenium2Screenshots
Library  String
Library  DateTime

*** Variables ***
${locator.tenderId}                                           xpath=//td[./text()='TenderID']/following-sibling::td[1]
${locator.title}                                              xpath=//td[./text()='Загальна назва закупівлі']/following-sibling::td[1]
${locator.description}                                        xpath=//td[./text()='Предмет закупівлі']/following-sibling::td[1]
${locator.value.amount}                                       xpath=//td[./text()='Максимальний бюджет']/following-sibling::td[1]
${locator.minimalStep.amount}                                 xpath=//td[./text()='Мінімальний крок зменшення ціни']/following-sibling::td[1]
${locator.procuringEntity.name}                               xpath=//td[./text()="Ім'я"]/following-sibling::td[1]
${locator.questions[0].title}                                 xpath=//div[@class='question relative']//div[@class='title']
${locator.questions[0].description}                           xpath=//div[@class='question relative']/div[@class='text']
${locator.questions[0].date}                                  xpath=//div[@class='question relative']/div[@class='date']
${locator.questions[0].answer}                                xpath=//div[@class='answer relative']/div[@class='text']
#Дати
${locator.tenderPeriod.startDate}                             xpath=//td[./text()='Початок періоду прийому пропозицій']/following-sibling::td[1]
${locator.enquiryPeriod.endDate}                              xpath=//td[./text()='Завершення періоду обговорення']/following-sibling::td[1]
${locator.tenderPeriod.endDate}                               xpath=//td[./text()='Завершення періоду прийому пропозицій']/following-sibling::td[1]
${locator.items[0].deliveryDate.endDate}                      xpath=(//td[./text()='Кінцева дата поставки']/following-sibling::td[1])[1]
#Опис
${locator.items[0].description}                                xpath=(//td[./text()='Предмет закупівлі']/following-sibling::td[1])[1]
${locator.items[1].description}                                xpath=(//td[./text()='Предмет закупівлі']/following-sibling::td[1])[2]
${locator.items[2].description}                                xpath=(//td[./text()='Предмет закупівлі']/following-sibling::td[1])[3]
${locator.items[3].description}                                xpath=(//td[./text()='Предмет закупівлі']/following-sibling::td[1])[4]
${locator.items[4].description}                                xpath=(//td[./text()='Предмет закупівлі']/following-sibling::td[1])[5]
#Населений пункт, вулиця доставки, поштовий код
${locator.items[0].deliveryAddress.countryName}                xpath=(//td[@class='nameField'][./text()='Адреса поставки']/following-sibling::td[1])[1]
${locator.items[1].deliveryAddress.countryName}                xpath=(//td[@class='nameField'][./text()='Адреса поставки']/following-sibling::td[1])[2]
${locator.items[2].deliveryAddress.countryName}                xpath=(//td[@class='nameField'][./text()='Адреса поставки']/following-sibling::td[1])[3]
${locator.items[3].deliveryAddress.countryName}                xpath=(//td[@class='nameField'][./text()='Адреса поставки']/following-sibling::td[1])[4]
${locator.items[4].deliveryAddress.countryName}                xpath=(//td[@class='nameField'][./text()='Адреса поставки']/following-sibling::td[1])[5]
#Cхеми класифікації
${locator.items[0].classification.scheme}                      xpath=//td[@class = 'nameField'][./text()='Клас CPV']
#ідентифікатора класифікації
${locator.items[0].classification.id}                          xpath=(//td[./text()='Клас CPV']/following-sibling::td[1]/span[1])[1]
#опису класифікації
${locator.items[0].classification.description}                 xpath=(//td[./text()='Клас CPV']/following-sibling::td[1]/span[2])[1]
#схеми додаткової класифікації
${locator.items[0].additionalClassifications[0].scheme}        xpath=(//td[@class = 'nameField'][./text()='Клас ДКПП'])[1]
#ідентифікатора додаткової класифікації
${locator.items[0].additionalClassifications[0].id}            xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[1])[1]
${locator.items[1].additionalClassifications[0].id}            xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[1])[2]
${locator.items[2].additionalClassifications[0].id}            xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[1])[3]
${locator.items[3].additionalClassifications[0].id}            xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[1])[4]
${locator.items[4].additionalClassifications[0].id}            xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[1])[5]
#опису додаткової класифікації
${locator.items[0].additionalClassifications[0].description}   xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[2])[1]
${locator.items[1].additionalClassifications[0].description}   xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[2])[2]
${locator.items[2].additionalClassifications[0].description}   xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[2])[3]
${locator.items[3].additionalClassifications[0].description}   xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[2])[4]
${locator.items[4].additionalClassifications[0].description}   xpath=(//td[./text()='Клас ДКПП']/following-sibling::td[1]/span[2])[5]
#Назва одиниці, коду
${locator.items[0].unit.code}                                  xpath=(//td[./text()='Кількість']/following-sibling::td[1]/span[2])[1]
#кількість
${locator.items[0].quantity}                                   xpath=(//td[./text()='Кількість']/following-sibling::td[1]/span[1])[1]
${locator.items[1].quantity}                                   xpath=(//td[./text()='Кількість']/following-sibling::td[1]/span[1])[2]
${locator.items[2].quantity}                                   xpath=(//td[./text()='Кількість']/following-sibling::td[1]/span[1])[3]
${locator.items[3].quantity}                                   xpath=(//td[./text()='Кількість']/following-sibling::td[1]/span[1])[4]
${locator.items[4].quantity}                                   xpath=(//td[./text()='Кількість']/following-sibling::td[1]/span[1])[5]

*** Keywords ***
Підготувати клієнт для користувача
  [Arguments]  @{ARGUMENTS}
  [Documentation]  Відкрити брaузер, створити обєкт api wrapper, тощо
  ...      ${ARGUMENTS[0]} ==  username
  Open Browser   ${BROKERS['${USERS.users['${ARGUMENTS[0]}'].broker}'].url}   ${USERS.users['${ARGUMENTS[0]}'].browser}   alias=${ARGUMENTS[0]}
  Set Window Size       @{USERS.users['${ARGUMENTS[0]}'].size}
  Set Window Position   @{USERS.users['${ARGUMENTS[0]}'].position}
  Run Keyword And Ignore Error       Pre Login   ${ARGUMENTS[0]}
  Wait Until Page Contains Element   jquery=a[href="/cabinet"]
  Click Element                      jquery=a[href="/cabinet"]
  Run Keyword If                     '${username}' != 'Netcast_Viewer'   Login

Login
  [Arguments]  @{ARGUMENTS}
  Wait Until Page Contains Element   name=email   10
  Sleep  1
  Input text                         name=email      ${USERS.users['${username}'].login}
  Sleep  2
  Input text                         name=psw        ${USERS.users['${username}'].password}
  Wait Until Page Contains Element   xpath=//button[contains(@class, 'btn')][./text()='Вхід в кабінет']   20
  Click Element                      xpath=//button[contains(@class, 'btn')][./text()='Вхід в кабінет']

Pre Login
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...    ${ARGUMENTS[0]} ==  username
  Wait Until Page Contains Element   name=siteLogin   10
  Input text                         name=siteLogin      ${BROKERS['${USERS.users['${username}'].broker}'].login}
  Input text                         name=sitePass       ${BROKERS['${USERS.users['${username}'].broker}'].password}
  Click Button                       xpath=.//*[@id='table1']/tbody/tr/td/form/p[3]/input

Створити тендер
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tender_data
  ${INITIAL_TENDER_DATA}=        update_date_for_netcast       ${INITIAL_TENDER_DATA}
#  ${INITIAL_TENDER_DATA}=        datetime_for_netcast          ${INITIAL_TENDER_DATA}
  Set Global Variable  ${INITIAL_TENDER_DATA}
  ${filepath}=   local_path_to_file   TestDocument.docx
  ${items}=         Get From Dictionary   ${INITIAL_TENDER_DATA.data}               items
  ${title}=         Get From Dictionary   ${INITIAL_TENDER_DATA.data}               title
  ${description}=   Get From Dictionary   ${INITIAL_TENDER_DATA.data}               description
  ${budget}=        Get From Dictionary   ${INITIAL_TENDER_DATA.data.value}         amount
  ${step_rate}=     Get From Dictionary   ${INITIAL_TENDER_DATA.data.minimalStep}   amount
  ${enquiry_start_date}=  Get From Dictionary           ${INITIAL_TENDER_DATA.data.enquiryPeriod}   startDate
  ${enquiry_start_date}=  convert_date_to_slash_format  ${enquiry_start_date}
  ${enquiry_end_date}=    Get From Dictionary           ${INITIAL_TENDER_DATA.data.enquiryPeriod}   endDate
  ${enquiry_end_date}=    convert_date_to_slash_format  ${enquiry_end_date}
  ${end_date}=            Get From Dictionary           ${INITIAL_TENDER_DATA.data.tenderPeriod}   endDate
  ${end_date}=            convert_date_to_slash_format  ${end_date}
  Selenium2Library.Switch Browser     ${ARGUMENTS[0]}
#Початкові дані
  Wait Until Page Contains Element    jquery=a[href="/tenders/new"]   30
  Click Element                       jquery=a[href="/tenders/new"]
  Wait Until Page Contains Element    name=tender_title   30
  Input text                          name=tender_title    ${title}
  Input text                          name=tender_description    ${description}
  Input text                          name=tender_value_amount   ${budget}
  Input text                          name=tender_minimalStep_amount   ${step_rate}
#Додавання cpv & dkpp
  Додати предмет    ${items[0]}   0
  Run Keyword if   '${mode}' == 'multi'   Додати багато предметів   items
#Дати
  Input text   name=plan_date    ${enquiry_start_date}
  Input text   name=tender_enquiryPeriod_endDate   ${enquiry_end_date}
  Input text   name=tender_tenderPeriod_endDate   ${end_date}
#Збереження
  Click Element                       xpath=//*[text()='Опублікувати']
  Wait Until Page Contains            Тендер опубліковано    30
  Capture Page Screenshot
  ${tender_UAid}=   Get Text          xpath=//td[./text()='TenderID']/following-sibling::td[1]
  ${Ids}=   Convert To String         ${tender_UAid}
  Run keyword if   '${mode}' == 'multi'   Set Multi Ids   ${tender_UAid}
  log  ${Ids}
  [return]  ${Ids}

Set Multi Ids
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[1]} ==  ${tender_UAid}
  ${id}=    Get Text   xpath=//*/section[6]/table/tbody/tr[1]/td[2]
  ${Ids}=   Create List    ${tender_UAid}   ${id}

Додати предмет
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  items
  ...      ${ARGUMENTS[1]} ==  ${INDEX}
  ${countryName}=        Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}       countryName
  ${streetAddress}       Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}     streetAddress
  ${postalCode}          Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}     postalCode
  ${quantity}=           Get From Dictionary   ${ARGUMENTS[0]}                        quantity
  ${latitude}=           Get From Dictionary   ${ARGUMENTS[0].deliveryLocation}    latitude
  ${longitude}=          Get From Dictionary   ${ARGUMENTS[0].deliveryLocation}    longitude
  ${cpv_desc}=           Get From Dictionary   ${ARGUMENTS[0].classification}         description
  ${items_description}=  Get From Dictionary   ${ARGUMENTS[0]}         description
  ${dkpp_desc}=          Get From Dictionary   ${ARGUMENTS[0].additionalClassifications[0]}   description
  ${dkpp_id}=            Get From Dictionary   ${ARGUMENTS[0].additionalClassifications[0]}   id
  ${region}=             Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}     region
  ${locality}=           Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}     locality
  ${INITIAL_TENDER_DATA}=  datetime_for_netcast   ${INITIAL_TENDER_DATA}
  ${deliveryDate}=      Get From Dictionary         ${INITIAL_TENDER_DATA}        deliveryDate
  ${deliveryDate}        convert_date_to_slash_format     ${deliveryDate}
  ${cpv}=                Convert To String   Печі пекарські
  ${cpv_id}=             Get From Dictionary   ${ARGUMENTS[0].classification}         id
#Дані до кожного предмету
  Input text        name=items[${ARGUMENTS[1]}][item_description]        ${items_description}
  Input text        name=items[${ARGUMENTS[1]}][item_quantity]   ${quantity}
  Click Element     xpath=//select[@name='items[${ARGUMENTS[1]}][item_unit]']/option[5]
  Click Element     xpath=//select[@name='items[${ARGUMENTS[1]}][item_country_id]']/option[contains(., '${countryName}')]
  Click Element     xpath=//select[@name='items[${ARGUMENTS[1]}][item_region_id]']/option[contains(.,'${region}')]
  Input text        name=items[${ARGUMENTS[1]}][item_deliveryAddress_locality]   ${locality}
  Input text        name=items[${ARGUMENTS[1]}][item_deliveryAddress_streetAddress]   ${streetAddress}
  Input text        name=items[${ARGUMENTS[1]}][item_deliveryAddress_postalCode]   ${postalCode}
  Input text        name=items[${ARGUMENTS[1]}][item_deliveryDate_endDate]       ${deliveryDate}
#CPV
  Click Element     xpath=(//a[contains(@data-class, 'cpv')][./text()='Визначити за довідником'])[last()]
  Select Frame      xpath=//iframe[contains(@src,'/js/classifications/cpv/uk.htm?relation=true')]
  Input text                          id=search     ${cpv}
  Wait Until Page Contains            ${cpv_id}
  Click Element                       xpath=//a[contains(., '${cpv_id}')]
  Click Element                       id=select
  Unselect Frame
#DKPP
  Click Element                       xpath=(//a[contains(@data-class, 'dkpp')][./text()='Визначити за довідником'])[last()]
  Select Frame                        xpath=//iframe[contains(@src,'/js/classifications/dkpp/uk.htm?relation=true')]
  Input text                          id=search     ${dkpp_desc}
  Wait Until Page Contains            ${dkpp_id}
  Click Element                       xpath=//a[contains(., '${dkpp_id}')]
  Click Element                       id=select
  Unselect Frame

Додати багато предметів
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  items
  ${Items_length}=   Get Length   ${items}
  : FOR    ${INDEX}    IN RANGE    1    ${Items_length}
  \   Click Element   xpath=//a[contains(@class, 'addMultiItem')][./text()='Додати предмет закупівлі']
  \   Додати предмет   ${items[${INDEX}]}   ${INDEX}

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
  netcast.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Wait Until Page Contains Element           xpath=//a[./text()='Редагувати']   30
  Click Element                              xpath=//a[./text()='Редагувати']
  Wait Until Page Contains Element           xpath=(//a[@class='deleteMultiItem'])[last()]  10
  Click Element                              xpath=(//a[@class='deleteMultiItem'])[last()]
  Sleep  2
  Click Element                              xpath=//*[text()='OK']
  Click Element                              xpath=(//a[@class='deleteMultiItem'])[last()]
  Sleep  2
  Click Element                              xpath=//*[text()='OK']
  Click Element                              xpath=(//a[@class='deleteMultiItem'])[last()]
  Sleep  2
  Click Element                              xpath=//*[text()='OK']
  Sleep  1
  : FOR    ${INDEX}    IN RANGE    2    ${ARGUMENTS[2]} +2
  \   Click Element   xpath=//a[contains(@class, 'addMultiItem')][./text()='Додати предмет закупівлі']
  \   Додати предмет   ${items[${INDEX}]}   ${INDEX}
  Sleep  3
  Wait Until Page Contains Element           xpath=//button[./text()='Зберегти']   30
  Click Element                              xpath=//button[./text()='Зберегти']
  Wait Until Page Contains      Зміни збережено, дані в ЦБД оновлено   30


видалити позиції
  netcast.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Wait Until Page Contains Element           xpath=//a[./text()='Редагувати']   30
  Click Element                              xpath=//a[./text()='Редагувати']
  : FOR    ${INDEX}    IN RANGE    0    ${ARGUMENTS[2]}
  \   sleep  5
  \   Click Element                          xpath=(//a[@class='deleteMultiItem'])[last()]
  \   Sleep  2
  \   Click Element                          xpath=//*[text()='OK']
  \   sleep  5
  Wait Until Page Contains Element           xpath=//button[./text()='Зберегти']   30
  Click Element                              xpath=//button[./text()='Зберегти']
  Wait Until Page Contains      Зміни збережено, дані в ЦБД оновлено   30

Пошук тендера по ідентифікатору
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tenderId
  Switch browser   ${ARGUMENTS[0]}
  Go to   ${BROKERS['${USERS.users['${username}'].broker}'].url}
  Wait Until Page Contains            Держзакупівлі.онлайн   10
  Click Element                       xpath=//a[text()='Закупівлі']
  sleep  1
  Click Element                       xpath=//select[@name='filter[object]']/option[@value='tenderID']
  Input text                          xpath=//input[@name='filter[search]']  ${ARGUMENTS[1]}
  Click Element                       xpath=//button[@class='btn not_toExtend'][./text()='Пошук']
  Wait Until Page Contains            ${ARGUMENTS[1]}   10
  Capture Page Screenshot
  sleep  1
  Click Element                       xpath=//a[@class='reverse tenderLink']

Задати питання
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tenderUaId
  ...      ${ARGUMENTS[2]} ==  questionId
  ${title}=        Get From Dictionary  ${ARGUMENTS[2].data}  title
  ${description}=  Get From Dictionary  ${ARGUMENTS[2].data}  description
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  netcast.Пошук тендера по ідентифікатору    ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  sleep  1
  Execute Javascript                  window.scroll(2500,2500)
  Wait Until Page Contains Element    xpath=//a[@class='reverse openCPart'][span[text()='Обговорення']]    20
  Click Element                       xpath=//a[@class='reverse openCPart'][span[text()='Обговорення']]
  Wait Until Page Contains Element    name=title    20
  Input text                          name=title                 ${title}
  Input text                          xpath=//textarea[@name='description']           ${description}
  Click Element                       xpath=//div[contains(@class, 'buttons')]//button[@type='submit']
  Wait Until Page Contains            ${title}   30
  Capture Page Screenshot

Відповісти на питання
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = tenderUaId
  ...      ${ARGUMENTS[2]} = 0
  ...      ${ARGUMENTS[3]} = answer_data

  ${answer}=     Get From Dictionary  ${ARGUMENTS[3].data}  answer
  Selenium2Library.Switch Browser     ${ARGUMENTS[0]}
  netcast.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Execute Javascript                  window.scroll(1500,1500)
  Wait Until Page Contains Element    xpath=//a[@class='reverse openCPart'][span[text()='Обговорення']]    20
  Click Element                       xpath=//a[@class='reverse openCPart'][span[text()='Обговорення']]
  Wait Until Page Contains Element    xpath=//textarea[@name='answer']    20
  Input text                          xpath=//textarea[@name='answer']            ${answer}
  Click Element                       xpath=//div[1]/div[3]/form/div/table/tbody/tr/td[2]/button
  Wait Until Page Contains            ${answer}   30
  Capture Page Screenshot

Подати скаргу
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = tenderUaId
  ...      ${ARGUMENTS[2]} = complaintsId
  ${complaint}=        Get From Dictionary  ${ARGUMENTS[2].data}  title
  ${description}=      Get From Dictionary  ${ARGUMENTS[2].data}  description
#  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
#  netcast.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
#  sleep  1
#  Execute Javascript                 window.scroll(1500,1500)
#  Click Element                      xpath=//a[@class='reverse openCPart'][span[text()='Скарги']]
#  Wait Until Page Contains Element   name=title    20
#  Input text                         name=title                 ${complaint}
#  Input text                         xpath=//textarea[@name='description']           ${description}
#  Click Element                      xpath=//div[contains(@class, 'buttons')]//button[@type='submit']
#  Wait Until Page Contains           ${complaint}   30
#  Capture Page Screenshot
  Fail  Неможливо задати скаргу

Порівняти скаргу
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = tenderUaId
  ...      ${ARGUMENTS[2]} = complaintsData
  ${complaint}=        Get From Dictionary  ${ARGUMENTS[2].data}  title
  ${description}=      Get From Dictionary  ${ARGUMENTS[2].data}  description
#  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
#  netcast.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
#  sleep  1
#  Execute Javascript                 window.scroll(2500,2500)
#  sleep  1
#  Click Element                      xpath=//a[@class='reverse openCPart'][span[text()='Скарги']]
#  Wait Until Page Contains           ${complaint}   30
#  Capture Page Screenshot
  Fail  Неможливо задати скаргу

Внести зміни в тендер
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = TenderId
  ...      ${ARGUMENTS[2]} = description
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  netcast.Пошук тендера по ідентифікатору    ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  sleep  1
  Click Element                      xpath=//a[@class='button save'][./text()='Редагувати']
  sleep  1
  Input text                         name=tender_description   ${ARGUMENTS[2]}
  sleep  1
  Click Element                      name=do
  Wait Until Page Contains           ${ARGUMENTS[2]}   30
  Capture Page Screenshot

Завантажити документ
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = filepath
  ...      ${ARGUMENTS[1]} = tenderUaId
##Реалізація яка закоментована проходить лише на "browser: chrome"
  ${filepath}=   local_path_to_file   TestDocument.docx
#  Selenium2Library.Switch Browser   ${ARGUMENTS[0]}
#  Click Element                     xpath=//a[@class='button save'][./text()='Редагувати']
#  Choose File                       xpath=//input[@name='upload']    ${filepath}
#  Capture Page Screenshot
  Fail  Не реалізовано

Оновити сторінку з тендером
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = tenderUaId

  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  netcast.Пошук тендера по ідентифікатору    ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Reload Page

отримати інформацію із тендера
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  fieldname
  Switch browser   ${ARGUMENTS[0]}
  ${return_value}=  run keyword  отримати інформацію про ${ARGUMENTS[1]}
  [return]  ${return_value}

отримати тест із поля і показати на сторінці
  [Arguments]   ${fieldname}
  sleep  1
  ${return_value}=   Get Text  ${locator.${fieldname}}
  [return]  ${return_value}

отримати інформацію про title
  ${title}=   отримати тест із поля і показати на сторінці   title
  [return]  ${title.split('.')[0]}

отримати інформацію про description
  Fail  Немає такого поля при перегляді

отримати інформацію про tenderId
  ${tenderId}=   отримати тест із поля і показати на сторінці   tenderId
  [return]  ${tenderId}

отримати інформацію про procuringEntity.name
  ${procuringEntity_name}=   отримати тест із поля і показати на сторінці   procuringEntity.name
  ${procuringEntity_name}=   Run keyword if    '${procuringEntity_name}' == 'Той Кого Не Можна Називати'   Convert To String  Повна назва невідомо чого
  [return]  ${procuringEntity_name}

отримати інформацію про value.amount
  ${valueAmount}=   отримати тест із поля і показати на сторінці   value.amount
  ${valueAmount}=   Convert To Number   ${valueAmount.split(' ')[0]}
  [return]  ${valueAmount}

отримати інформацію про minimalStep.amount
  ${minimalStepAmount}=   отримати тест із поля і показати на сторінці   minimalStep.amount
  ${minimalStepAmount}=   Convert To Number   ${minimalStepAmount.split(' ')[0]}
  [return]  ${minimalStepAmount}

#1
отримати інформацію про items[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].description
  [return]  ${return_value}
#2
Отримати інформацію про items[1].description
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].description
  [return]  ${return_value}
#3
Отримати інформацію про items[2].description
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].description
  [return]  ${return_value}
#4
Отримати інформацію про items[3].description
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].description
  [return]  ${return_value}
#5
Отримати інформацію про items[4].description
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].description
  [return]  ${return_value}

Отримати інформацію про tenderPeriod.startDate
  ${return_value}=   Отримати тест із поля і показати на сторінці   tenderPeriod.startDate
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]  ${return_value}

Отримати інформацію про tenderPeriod.endDate
  ${return_value}=   Отримати тест із поля і показати на сторінці   tenderPeriod.endDate
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]  ${return_value}

Отримати інформацію про enquiryPeriod.startDate
  Fail  не відображається дата

Отримати інформацію про enquiryPeriod.endDate
  ${return_value}=   Отримати тест із поля і показати на сторінці  enquiryPeriod.endDate
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]  ${return_value}

Change_day_to_month
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]}  ==  date
  ${day}=   Get Substring   ${ARGUMENTS[0]}   0   2
  ${month}=   Get Substring   ${ARGUMENTS[0]}  3   6
  ${year}=   Get Substring   ${ARGUMENTS[0]}   5
  ${return_value}=   Convert To String  ${month}${day}${year}
  [return]  ${return_value}

#1
отримати інформацію про items[0].deliveryAddress.countryName
  ${countryName}=   отримати тест із поля і показати на сторінці   items[0].deliveryAddress.countryName
  [return]  ${countryName.split(', ')[4]}
#2
отримати інформацію про items[1].deliveryAddress.countryName
  ${countryName}=   отримати тест із поля і показати на сторінці   items[1].deliveryAddress.countryName
  [return]  ${countryName.split(', ')[4]}
#3
отримати інформацію про items[2].deliveryAddress.countryName
  ${countryName}=   отримати тест із поля і показати на сторінці   items[2].deliveryAddress.countryName
  [return]  ${countryName.split(', ')[4]}
#4
отримати інформацію про items[3].deliveryAddress.countryName
  ${countryName}=   отримати тест із поля і показати на сторінці   items[3].deliveryAddress.countryName
  [return]  ${countryName.split(', ')[4]}
#5
отримати інформацію про items[4].deliveryAddress.countryName
  ${countryName}=   отримати тест із поля і показати на сторінці   items[4].deliveryAddress.countryName
  [return]  ${countryName.split(', ')[4]}

#1
отримати інформацію про items[0].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[0]}
#2
отримати інформацію про items[1].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[0]}
#3
отримати інформацію про items[2].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[0]}
#4
отримати інформацію про items[3].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[0]}
#5
отримати інформацію про items[4].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[0]}

#1
отримати інформацію про items[0].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[2]}
#2
отримати інформацію про items[1].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[2]}
#3
отримати інформацію про items[2].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[2]}
#4
отримати інформацію про items[3].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[2]}
#5
отримати інформацію про items[4].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[2]}

#1
отримати інформацію про items[0].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[1]}
#2
отримати інформацію про items[1].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[1]}
#3
отримати інформацію про items[2].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[1]}
#4
отримати інформацію про items[3].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[1]}
#5
отримати інформацію про items[4].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].deliveryAddress.countryName
  [return]  ${return_value.split(', ')[1]}

#1
отримати інформацію про items[0].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].deliveryAddress.countryName
  ${return_value}=    Remove String     ${return_value.split(', ')[3]}
  [return]  ${return_value.split(' ')[0]}
#2
отримати інформацію про items[1].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].deliveryAddress.countryName
  ${return_value}=    Remove String     ${return_value.split(', ')[3]}
  [return]  ${return_value.split(' ')[0]}
#3
отримати інформацію про items[2].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].deliveryAddress.countryName
  ${return_value}=    Remove String     ${return_value.split(', ')[3]}
  [return]  ${return_value.split(' ')[0]}
#4
отримати інформацію про items[3].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].deliveryAddress.countryName
  ${return_value}=    Remove String     ${return_value.split(', ')[3]}
  [return]  ${return_value.split(' ')[0]}
#5
отримати інформацію про items[4].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].deliveryAddress.countryName
  ${return_value}=    Remove String     ${return_value.split(', ')[3]}
  [return]  ${return_value.split(' ')[0]}

#1
отримати інформацію про items[0].classification.scheme
  ${classificationScheme}=   отримати тест із поля і показати на сторінці   items[0].classification.scheme
  [return]  ${classificationScheme.split(' ')[1]}
#2
отримати інформацію про items[1].classification.scheme
  ${classificationScheme}=   отримати тест із поля і показати на сторінці   items[0].classification.scheme
  [return]  ${classificationScheme.split(' ')[1]}
#3
отримати інформацію про items[2].classification.scheme
  ${classificationScheme}=   отримати тест із поля і показати на сторінці   items[0].classification.scheme
  [return]  ${classificationScheme.split(' ')[1]}
#4
отримати інформацію про items[3].classification.scheme
  ${classificationScheme}=   отримати тест із поля і показати на сторінці   items[0].classification.scheme
  [return]  ${classificationScheme.split(' ')[1]}
#5
отримати інформацію про items[4].classification.scheme
  ${classificationScheme}=   отримати тест із поля і показати на сторінці   items[0].classification.scheme
  [return]  ${classificationScheme.split(' ')[1]}

#1
отримати інформацію про items[0].additionalClassifications[0].scheme
  ${additionalClassificationsScheme}=   отримати тест із поля і показати на сторінці   items[0].additionalClassifications[0].scheme
  [return]  ${additionalClassificationsScheme.split(' ')[1]}
#2
отримати інформацію про items[1].additionalClassifications[0].scheme
  ${additionalClassificationsScheme}=   отримати тест із поля і показати на сторінці   items[0].additionalClassifications[0].scheme
  [return]  ${additionalClassificationsScheme.split(' ')[1]}
#3
отримати інформацію про items[2].additionalClassifications[0].scheme
  ${additionalClassificationsScheme}=   отримати тест із поля і показати на сторінці   items[0].additionalClassifications[0].scheme
  [return]  ${additionalClassificationsScheme.split(' ')[1]}
#4
отримати інформацію про items[3].additionalClassifications[0].scheme
  ${additionalClassificationsScheme}=   отримати тест із поля і показати на сторінці   items[0].additionalClassifications[0].scheme
  [return]  ${additionalClassificationsScheme.split(' ')[1]}
#5
отримати інформацію про items[4].additionalClassifications[0].scheme
  ${additionalClassificationsScheme}=   отримати тест із поля і показати на сторінці   items[0].additionalClassifications[0].scheme
  [return]  ${additionalClassificationsScheme.split(' ')[1]}

отримати інформацію про questions[0].title
  Click Element        xpath=//a[@class='reverse openCPart'][span[text()='Обговорення']]
  ${questionsTitle}=   отримати тест із поля і показати на сторінці   questions[0].title
  ${questionsTitle}=   Convert To Lowercase   ${questionsTitle}
  [return]  ${questionsTitle.capitalize().split('.')[0] + '.'}

отримати інформацію про questions[0].date
  ${questionsDate}=   отримати тест із поля і показати на сторінці   questions[0].date
  [return]  ${questionsDate}

отримати інформацію про questions[0].answer
  Click Element                       xpath=//a[@class='reverse openCPart'][span[text()='Обговорення']]
  ${questionsAnswer}=   отримати тест із поля і показати на сторінці   questions[0].answer
  [return]  ${questionsAnswer}

отримати інформацію про questions[0].description
  ${questionsDescription}=   отримати тест із поля і показати на сторінці   questions[0].description
  [return]  ${questionsDescription}

#1
отримати інформацію про items[0].deliveryDate.endDate
  Fail  неможливо звірити тому що період доставки мінімальний 10 днів
#2
отримати інформацію про items[1].deliveryDate.endDate
  Fail  неможливо звірити тому що період доставки мінімальний 10 днів
#3
отримати інформацію про items[2].deliveryDate.endDate
  Fail  неможливо звірити тому що період доставки мінімальний 10 днів
#4
отримати інформацію про items[3].deliveryDate.endDate
  Fail  неможливо звірити тому що період доставки мінімальний 10 днів
#5
отримати інформацію про items[4].deliveryDate.endDate
  Fail  неможливо звірити тому що період доставки мінімальний 10 днів

#1
отримати інформацію про items[0].classification.id
  ${classificationId}=   отримати тест із поля і показати на сторінці   items[0].classification.id
  [return]  ${classificationId}
#2
отримати інформацію про items[1].classification.id
  ${classificationId}=   отримати тест із поля і показати на сторінці   items[0].classification.id
  [return]  ${classificationId}
#3
отримати інформацію про items[2].classification.id
  ${classificationId}=   отримати тест із поля і показати на сторінці   items[0].classification.id
  [return]  ${classificationId}
#4
отримати інформацію про items[3].classification.id
  ${classificationId}=   отримати тест із поля і показати на сторінці   items[0].classification.id
  [return]  ${classificationId}
#5
отримати інформацію про items[4].classification.id
  ${classificationId}=   отримати тест із поля і показати на сторінці   items[0].classification.id
  [return]  ${classificationId}

#1
отримати інформацію про items[0].classification.description
  ${classificationDescription}=   отримати тест із поля і показати на сторінці     items[0].classification.description
  [return]  ${classificationDescription}
#2
отримати інформацію про items[1].classification.description
  ${classificationDescription}=   отримати тест із поля і показати на сторінці     items[0].classification.description
  [return]  ${classificationDescription}
#3
отримати інформацію про items[2].classification.description
  ${classificationDescription}=   отримати тест із поля і показати на сторінці     items[0].classification.description
  [return]  ${classificationDescription}
#4
отримати інформацію про items[3].classification.description
  ${classificationDescription}=   отримати тест із поля і показати на сторінці     items[0].classification.description
  [return]  ${classificationDescription}
#5
отримати інформацію про items[4].classification.description
  ${classificationDescription}=   отримати тест із поля і показати на сторінці     items[0].classification.description
  [return]  ${classificationDescription}

#1
отримати інформацію про items[0].additionalClassifications[0].id
  ${additionalClassificationsId}=   отримати тест із поля і показати на сторінці     items[0].additionalClassifications[0].id
  [return]  ${additionalClassificationsId}
#2
отримати інформацію про items[1].additionalClassifications[0].id
  ${additionalClassificationsId}=   отримати тест із поля і показати на сторінці     items[1].additionalClassifications[0].id
  [return]  ${additionalClassificationsId}
#3
отримати інформацію про items[2].additionalClassifications[0].id
  ${additionalClassificationsId}=   отримати тест із поля і показати на сторінці     items[2].additionalClassifications[0].id
  [return]  ${additionalClassificationsId}
#4
отримати інформацію про items[3].additionalClassifications[0].id
  ${additionalClassificationsId}=   отримати тест із поля і показати на сторінці     items[3].additionalClassifications[0].id
  [return]  ${additionalClassificationsId}
#5
отримати інформацію про items[4].additionalClassifications[0].id
  ${additionalClassificationsId}=   отримати тест із поля і показати на сторінці     items[4].additionalClassifications[0].id
  [return]  ${additionalClassificationsId}

#1
отримати інформацію про items[0].additionalClassifications[0].description
  ${additionalClassificationsDescription}=   отримати тест із поля і показати на сторінці     items[0].additionalClassifications[0].description
  [return]  ${additionalClassificationsDescription}
#2
отримати інформацію про items[1].additionalClassifications[0].description
  ${additionalClassificationsDescription}=   отримати тест із поля і показати на сторінці     items[1].additionalClassifications[0].description
  [return]  ${additionalClassificationsDescription}
#3
отримати інформацію про items[2].additionalClassifications[0].description
  ${additionalClassificationsDescription}=   отримати тест із поля і показати на сторінці     items[2].additionalClassifications[0].description
  [return]  ${additionalClassificationsDescription}
#4
отримати інформацію про items[3].additionalClassifications[0].description
  ${additionalClassificationsDescription}=   отримати тест із поля і показати на сторінці     items[3].additionalClassifications[0].description
  [return]  ${additionalClassificationsDescription}
#5
отримати інформацію про items[4].additionalClassifications[0].description
  ${additionalClassificationsDescription}=   отримати тест із поля і показати на сторінці     items[4].additionalClassifications[0].description
  [return]  ${additionalClassificationsDescription}

#1
отримати інформацію про items[0].quantity
  ${itemsQuantity}=   отримати тест із поля і показати на сторінці     items[0].quantity
  ${itemsQuantity}=   Convert To Integer    ${itemsQuantity}
  [return]  ${itemsQuantity}
#2
отримати інформацію про items[1].quantity
  ${itemsQuantity}=   отримати тест із поля і показати на сторінці     items[1].quantity
  ${itemsQuantity}=   Convert To Integer    ${itemsQuantity}
  [return]  ${itemsQuantity}
#3
отримати інформацію про items[2].quantity
  ${itemsQuantity}=   отримати тест із поля і показати на сторінці     items[2].quantity
  ${itemsQuantity}=   Convert To Integer    ${itemsQuantity}
  [return]  ${itemsQuantity}
#4
отримати інформацію про items[3].quantity
  ${itemsQuantity}=   отримати тест із поля і показати на сторінці     items[3].quantity
  ${itemsQuantity}=   Convert To Integer    ${itemsQuantity}
  [return]  ${itemsQuantity}
#5
отримати інформацію про items[4].quantity
  ${itemsQuantity}=   отримати тест із поля і показати на сторінці     items[4].quantity
  ${itemsQuantity}=   Convert To Integer    ${itemsQuantity}
  [return]  ${itemsQuantity}

#1
отримати інформацію про items[0].unit.name
  ${unitName}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitName}=   Run keyword if    '${unitName}'== 'шт'   Convert To String  штуки
  [return]  ${unitName}
#2
отримати інформацію про items[1].unit.name
  ${unitName}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitName}=   Run keyword if    '${unitName}'== 'шт'   Convert To String  штуки
  [return]  ${unitName}
#3
отримати інформацію про items[2].unit.name
  ${unitName}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitName}=   Run keyword if    '${unitName}'== 'шт'   Convert To String  штуки
  [return]  ${unitName}
#4
отримати інформацію про items[3].unit.name
  ${unitName}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitName}=   Run keyword if    '${unitName}'== 'шт'   Convert To String  штуки
  [return]  ${unitName}
#5
отримати інформацію про items[4].unit.name
  ${unitName}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitName}=   Run keyword if    '${unitName}'== 'шт'   Convert To String  штуки
  [return]  ${unitName}

#1
отримати інформацію про items[0].unit.code
  ${unitCode}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitCode}=   Run keyword if    '${unitCode}'== 'шт'   Convert To String  штуки
  [return]  ${unitCode}
#2
отримати інформацію про items[1].unit.code
  ${unitCode}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitCode}=   Run keyword if    '${unitCode}'== 'шт'   Convert To String  штуки
  [return]  ${unitCode}
#3
отримати інформацію про items[2].unit.code
  ${unitCode}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitCode}=   Run keyword if    '${unitCode}'== 'шт'   Convert To String  штуки
  [return]  ${unitCode}
#4
отримати інформацію про items[3].unit.code
  ${unitCode}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitCode}=   Run keyword if    '${unitCode}'== 'шт'   Convert To String  штуки
  [return]  ${unitCode}
#5
отримати інформацію про items[4].unit.code
  ${unitCode}=   отримати тест із поля і показати на сторінці     items[0].unit.code
  ${unitCode}=   Run keyword if    '${unitCode}'== 'шт'   Convert To String  штуки
  [return]  ${unitCode}

Подати цінову пропозицію
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tender_uid
  ...      ${ARGUMENTS[2]} ==  bid
  ${tenderUaId}=   Convert To String   ${ARGUMENTS[1]}
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}

  Run keyword if   '${TEST NAME}' == 'Подати цінову пропозицію bidder'    sleep  400
  netcast.Пошук тендера по ідентифікатору    ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  sleep  1
  Execute Javascript             window.scroll(2500,2500)
  sleep  10
  Input text                     xpath=//input[@name='amount']    100
  Click Element                  name=do
  sleep  10
  Click Element                  xpath=//a[@class='jBtn undefined']


Змінити цінову пропозицію
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tender_uid
  ...      ${ARGUMENTS[2]} ==  bid_resp
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  netcast.Пошук тендера по ідентифікатору    ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  sleep  1
  Execute Javascript             window.scroll(2500,2500)
  sleep  1
  Click Element                  xpath=//a[@class='button save bidToEdit']
  Input text                     xpath=//input[@name='amount']    ${ARGUMENTS[2]}
  Click Element                  name=do
  sleep  1
  Click Element                  xpath=//a[@class='jBtn undefined']

Завантажити документ в ставку
  ${file_name}=                    Convert To String     TestDocument.docx
  ${file_path}=                    local_path_to_file    ${file_name}
  Execute Javascript             window.scroll(2500,2500)
  sleep  1
  Choose File                    xpath= //input[@name='upload']    ${file_path}
  sleep  1
  Click Element                  name=do

отримати інформацію про items[0].deliveryLocation.longitude
  Fail  Немає таких даних

отримати інформацію про items[0].deliveryLocation.latitude
  Fail  Немає таких даних



