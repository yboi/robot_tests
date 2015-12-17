*** Setting ***
Library  Selenium2Screenshots
Library  String
Library  DateTime

*** Variables ***
${UAID}                                                        xpath=//div[contains(@class, "panel-heading")]/h3
${locator.tenderId}                                            jquery=h3
${locator.title}                                               jquery=tender-subject-info>div.row:contains("Назва закупівлі:")>:eq(1)>
${locator.description}                                         jquery=tender-subject-info>div.row:contains("Детальний опис закупівлі:")>:eq(1)>
${locator.minimalStep.amount}                                  xpath=(//div[@class = 'col-sm-8']/p[@class='ng-binding'])[9]
${locator.procuringEntity.name}                                jquery=customer-info>div.row:contains("Найменування:")>:eq(1)>
${locator.value.amount}                                        xpath=(//div[@class = 'col-sm-8']/p[@class='ng-binding'])[8]
${locator.tenderPeriod.startDate}                              xpath=(//div[@class = 'col-sm-8']/p[@class='ng-binding'])[3]
${locator.tenderPeriod.endDate}                                xpath=(//div[@class = 'col-sm-8']/p[@class='ng-binding'])[4]
${locator.enquiryPeriod.startDate}                             xpath=(//div[@class = 'col-sm-8']/p[@class='ng-binding'])[1]
${locator.enquiryPeriod.endDate}                               xpath=(//div[@class = 'col-sm-8']/p[@class='ng-binding'])[2]
#Опис
${locator.items[0].description}                                xpath=(//div[@class='ng-scope']/div[4]/div[@class='col-sm-8']/p)[1]
${locator.items[1].description}                                xpath=(//div[@class='ng-scope']/div[4]/div[@class='col-sm-8']/p)[2]
${locator.items[2].description}                                xpath=(//div[@class='ng-scope']/div[4]/div[@class='col-sm-8']/p)[3]
${locator.items[3].description}                                xpath=(//div[@class='ng-scope']/div[4]/div[@class='col-sm-8']/p)[4]
${locator.items[4].description}                                xpath=(//div[@class='ng-scope']/div[4]/div[@class='col-sm-8']/p)[5]
#Дата доставки
${locator.items[0].deliveryDate.endDate}                       xpath=(//div[@class='ng-scope']/div[6]/div[@class='col-sm-8']/p)[1]
${locator.items[1].deliveryDate.endDate}                       xpath=(//div[@class='ng-scope']/div[6]/div[@class='col-sm-8']/p)[2]
${locator.items[2].deliveryDate.endDate}                       xpath=(//div[@class='ng-scope']/div[6]/div[@class='col-sm-8']/p)[3]
${locator.items[3].deliveryDate.endDate}                       xpath=(//div[@class='ng-scope']/div[6]/div[@class='col-sm-8']/p)[4]
${locator.items[4].deliveryDate.endDate}                       xpath=(//div[@class='ng-scope']/div[6]/div[@class='col-sm-8']/p)[5]
#Широта і довгота
${locator.items[0].deliveryLocation.latitude}                  xpath=(//div[@class='ng-scope']/div[8]/div[@class='col-sm-8']/p)[1]
${locator.items[1].deliveryLocation.latitude}                  xpath=(//div[@class='ng-scope']/div[8]/div[@class='col-sm-8']/p)[2]
${locator.items[2].deliveryLocation.latitude}                  xpath=(//div[@class='ng-scope']/div[8]/div[@class='col-sm-8']/p)[3]
${locator.items[3].deliveryLocation.latitude}                  xpath=(//div[@class='ng-scope']/div[8]/div[@class='col-sm-8']/p)[4]
${locator.items[4].deliveryLocation.latitude}                  xpath=(//div[@class='ng-scope']/div[8]/div[@class='col-sm-8']/p)[5]
#Населений пункт
${locator.items[0].deliveryAddress.countryName}                xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.country.title'])[1]
${locator.items[1].deliveryAddress.countryName}                xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.country.title'])[2]
${locator.items[2].deliveryAddress.countryName}                xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.country.title'])[3]
${locator.items[3].deliveryAddress.countryName}                xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.country.title'])[4]
${locator.items[4].deliveryAddress.countryName}                xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.country.title'])[5]
#Поштовий код
${locator.items[0].deliveryAddress.postalCode}                 xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.postIndex'])[1]
${locator.items[1].deliveryAddress.postalCode}                 xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.postIndex'])[2]
${locator.items[2].deliveryAddress.postalCode}                 xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.postIndex'])[3]
${locator.items[3].deliveryAddress.postalCode}                 xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.postIndex'])[4]
${locator.items[4].deliveryAddress.postalCode}                 xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.postIndex'])[5]
#Регіон
${locator.items[0].deliveryAddress.region}                     xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.region.title'])[1]
${locator.items[1].deliveryAddress.region}                     xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.region.title'])[2]
${locator.items[2].deliveryAddress.region}                     xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.region.title'])[3]
${locator.items[3].deliveryAddress.region}                     xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.region.title'])[4]
${locator.items[4].deliveryAddress.region}                     xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.region.title'])[5]
#Адрес доставки
${locator.items[0].deliveryAddress.locality}                   xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.city.title'])[1]
${locator.items[1].deliveryAddress.locality}                   xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.city.title'])[2]
${locator.items[2].deliveryAddress.locality}                   xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.city.title'])[3]
${locator.items[3].deliveryAddress.locality}                   xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.city.title'])[4]
${locator.items[4].deliveryAddress.locality}                   xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.city.title'])[5]
#Вулиця доставки
${locator.items[0].deliveryAddress.streetAddress}              xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.addressStr'])[1]
${locator.items[1].deliveryAddress.streetAddress}              xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.addressStr'])[2]
${locator.items[2].deliveryAddress.streetAddress}              xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.addressStr'])[3]
${locator.items[3].deliveryAddress.streetAddress}              xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.addressStr'])[4]
${locator.items[4].deliveryAddress.streetAddress}              xpath=(//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.addressStr'])[5]
#Cхеми класифікації
${locator.items[0].classification.scheme}                      xpath=(//div[@class='ng-scope']/div[2]/div[@class='col-sm-4']/p)[1]
#ідентифікатора класифікації
${locator.items[0].classification.id}                          xpath=(//div[@class='ng-scope']/div[2]/div[@class='col-sm-8']/p)[1]
#опису класифікації
${locator.items[0].classification.description}                 xpath=(//div[@class='ng-scope']/div[2]/div[@class='col-sm-8']/p)[1]
#схеми додаткової класифікації
${locator.items[0].additionalClassifications[0].scheme}        xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-4']/p)[1]
#ідентифікатора додаткової класифікації
${locator.items[0].additionalClassifications[0].id}            xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[1]
${locator.items[1].additionalClassifications[0].id}            xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[2]
${locator.items[2].additionalClassifications[0].id}            xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[3]
${locator.items[3].additionalClassifications[0].id}            xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[4]
${locator.items[4].additionalClassifications[0].id}            xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[5]
#опису додаткової класифікації
${locator.items[0].additionalClassifications[0].description}   xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[1]
${locator.items[1].additionalClassifications[0].description}   xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[2]
${locator.items[2].additionalClassifications[0].description}   xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[3]
${locator.items[3].additionalClassifications[0].description}   xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[4]
${locator.items[4].additionalClassifications[0].description}   xpath=(//div[@class='ng-scope']/div[3]/div[@class='col-sm-8']/p)[5]
#Назва одиниці, коду і кількість
${locator.items[0].unit.name}                                  xpath=(//div[@class='ng-scope']/div[5]/div[@class='col-sm-8']/p)[1]
${locator.items[1].unit.name}                                  xpath=(//div[@class='ng-scope']/div[5]/div[@class='col-sm-8']/p)[2]
${locator.items[2].unit.name}                                  xpath=(//div[@class='ng-scope']/div[5]/div[@class='col-sm-8']/p)[3]
${locator.items[3].unit.name}                                  xpath=(//div[@class='ng-scope']/div[5]/div[@class='col-sm-8']/p)[4]
${locator.items[4].unit.name}                                  xpath=(//div[@class='ng-scope']/div[5]/div[@class='col-sm-8']/p)[5]

${locator.questions[0].title}                                  xpath=(//div[@class='col-sm-10']/span[@class='ng-binding'])[2]
${locator.questions[0].description}                            xpath=(//div[@class='col-sm-10']/span[@class='ng-binding'])[3]
${locator.questions[0].date}                                   xpath=(//div[@class='col-sm-10']/span[@class='ng-binding'])[1]
${locator.questions[0].answer}                                 xpath=(//div[@textarea='question.answer']/pre[@class='ng-binding'])[1]

*** Keywords ***
Підготувати клієнт для користувача
  [Arguments]  @{ARGUMENTS}
  [Documentation]  Відкрити брaвзер, створити обєкт api wrapper, тощо
  ...      ${ARGUMENTS[0]} ==  username
  Open Browser   ${USERS.users['${ARGUMENTS[0]}'].homepage}   ${USERS.users['${username}'].browser}   alias=${ARGUMENTS[0]}
  Set Window Size   @{USERS.users['${ARGUMENTS[0]}'].size}
  Set Window Position   @{USERS.users['${ARGUMENTS[0]}'].position}
#Login
  Sleep  3
  Wait Until Page Contains Element   id=inputUsername   10
  Input text   id=inputUsername      ${USERS.users['${username}'].login}
  Wait Until Page Contains Element   id=inputPassword   10
  Input text   id=inputPassword      ${USERS.users['${username}'].password}
  Click Button   id=btn_submit

Створити тендер
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  tender_data
  ${items}=         Get From Dictionary   ${INITIAL_TENDER_DATA.data}               items
  ${title}=         Get From Dictionary   ${INITIAL_TENDER_DATA.data}               title
  ${description}=   Get From Dictionary   ${INITIAL_TENDER_DATA.data}               description
  ${budget}=        Get From Dictionary   ${INITIAL_TENDER_DATA.data.value}         amount
  ${step_rate}=     Get From Dictionary   ${INITIAL_TENDER_DATA.data.minimalStep}   amount
  ${unit}=          Get From Dictionary   ${items[0].unit}                   name
  ${start_date}=    Get From Dictionary   ${INITIAL_TENDER_DATA.data.tenderPeriod}   startDate
  ${start_date}=    convert_date_to_etender_format   ${start_date}
  ${start_time}=    Get From Dictionary   ${INITIAL_TENDER_DATA.data.tenderPeriod}   startDate
  ${start_time}=    convert_time_to_etender_format   ${start_time}
  ${end_date}=      Get From Dictionary   ${INITIAL_TENDER_DATA.data.tenderPeriod}   endDate
  ${end_date}=      convert_date_to_etender_format   ${end_date}
  ${end_time}=      Get From Dictionary   ${INITIAL_TENDER_DATA.data.tenderPeriod}   endDate
  ${end_time}=      convert_time_to_etender_format      ${end_time}
  ${enquiry_end_date}=   Get From Dictionary         ${INITIAL_TENDER_DATA.data.enquiryPeriod}   endDate
  ${enquiry_end_date}=   convert_date_to_etender_format   ${enquiry_end_date}
  ${enquiry_end_time}=   Get From Dictionary              ${INITIAL_TENDER_DATA.data.enquiryPeriod}   endDate
  ${enquiry_end_time}=   convert_time_to_etender_format   ${enquiry_end_time}

  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  Wait Until Page Contains          Мої закупівлі   10
  Sleep  2
  Click Element                     xpath=//a[contains(@class, 'ng-binding')][./text()='Мої закупівлі']
  Sleep  5
  Click Element                     xpath=//a[contains(@class, 'btn btn-info')]
  Wait Until Page Contains Element  id=title
  Input text    id=title                  ${title}
  Input text    id=value                  ${budget}
  Click Element                     xpath=//div[contains(@class, 'form-group col-sm-6')]//input[@type='checkbox']
  Input text    id=minimalStep            ${step_rate}
  Input text    id=description       ${description}
  Input text    xpath=//div[contains(@class, 'form-group col-sm-8')]//input[@name='enqPEndDate']   ${enquiry_end_date}
  Input text    xpath=//div[contains(@class, 'form-group col-sm-8')]//div[contains(@class, 'col-sm-2')]//input[@ng-model='data.enquiryPeriod.endDate']   ${enquiry_end_time}
  Input text    xpath=//div[contains(@class, 'col-sm-2')]//input[@ng-model='data.tenderPeriod.startDate']   ${start_time}
  Input text    xpath=//div[contains(@class, 'form-group col-sm-8')]//input[@name='startDate']   ${start_date}
  Input text    xpath=//div[contains(@class, 'form-group col-sm-8')]//input[@name='endDate']   ${end_date}
  Input text    xpath=//div[contains(@class, 'form-group col-sm-8')]//div[contains(@class, 'col-sm-2')]//input[@ng-model='data.tenderPeriod.endDate']   ${end_time}
  Sleep  2
  Додати предмет   ${items[0]}   0
  Run Keyword if   '${mode}' == 'multi'   Додати багато предметів   items
  Sleep  1
  Wait Until Page Contains Element   xpath=//div[contains(@class, 'form-actions')]//button[@type='submit']   10
  Click Element   xpath=//div[contains(@class, 'form-actions')]//button[@type='submit']
  Sleep  1
  Wait Until Page Contains    [ТЕСТУВАННЯ]   10
  Sleep   70
  ##Очікування 70 сек, тому що очікуємо коли тендер буде опублікований і отримає UAid
  Click Element   xpath=//*[text()='${title}']
  Wait Until Page Contains Element   xpath=//div[contains(@class, "panel-heading")]   20
  Sleep  2
  ${tender_UAid}=  Get Text  ${UAID}
  ${tender_UAid}=  Get Substring  ${tender_UAid}   10
  [return]  ${tender_UAid}

Додати предмет
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  items
  ...      ${ARGUMENTS[1]} ==  ${INDEX}
  ${streetAddress}  Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}     streetAddress
  ${postalCode}     Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}     postalCode
  ${quantity}=      Get From Dictionary   ${ARGUMENTS[0]}                        quantity
  ${latitude}=      Get From Dictionary   ${ARGUMENTS[0].deliveryLocation}    latitude
  ${longitude}=     Get From Dictionary   ${ARGUMENTS[0].deliveryLocation}    longitude
  ${cpv}=           Get From Dictionary   ${ARGUMENTS[0].classification}         id
  ${items_description}=   Get From Dictionary   ${ARGUMENTS[0]}         description
  ${dkpp_desc}=     Get From Dictionary   ${ARGUMENTS[0].additionalClassifications[0]}   description
  ${dkpp_id}=       Get From Dictionary   ${ARGUMENTS[0].additionalClassifications[0]}   id
  ${region}=   Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}     region
  ${locality}=   Get From Dictionary   ${ARGUMENTS[0].deliveryAddress}     locality
  ${deliveryDate}   Get From Dictionary   ${items[0].deliveryDate}        endDate
  ${deliveryDate}   convert_date_to_etender_format        ${deliveryDate}
  ${unit}=      Get From Dictionary   ${ARGUMENTS[0].unit}   name_en

  Input text    xpath=(//div[@class='form-group col-sm-6']/div/textarea)[last()]    ${items_description}
  Input text    xpath=(//input[@ng-model='data.items[$index].quantity'])[last()]          ${quantity}
  Click Element   xpath=(//select[@name='region']//option[@label='Київська'])[last()]
  Sleep  2
  Click Element   xpath=(//select[@name='city']//option[@label='Київ'])[last()]
  Input text    xpath=(//div[@class=' form-group']//input[@type='text'])[last()]   ${streetAddress}
  Input text    xpath=(//div[@class='form-group']//input[@name='postIndex'])[last()]    ${postalCode}
  Input text    xpath=(//div[@class='col-sm-4']/input[@ng-model='data.items[$index].deliveryDate.startDate'])[last()]   ${deliveryDate}
  Input text    xpath=(//input[@ng-model='data.items[$index].deliveryDate.endDate'])[last()]   ${deliveryDate}

  Input text    xpath=(//div[@class='form-group col-xs-3']/input[@placeholder='Широта'])[last()]   ${latitude}
  Input text    xpath=(//input[@ng-model='data.items[$index].deliveryLocation.longitude'])[last()]  ${longitude}
  Click Element   xpath=.//*[@id='itemsUnit${ARGUMENTS[1]}']/option[@value='${unit}']
#CPV
  Click Element                      xpath=(//div[contains(@class, 'col-sm-2')]//input[@class="btn btn-danger"])[last()-1]
  Wait Until Element Is Visible      xpath=//input[@ng-model="searchstring"]  10
  Sleep  1
  Input text      xpath=//div[contains(@class, 'modal-content')]//input[@ng-model='searchstring']   ${cpv}
  Wait Until Page Contains    ${cpv}
  Sleep  2
  Click Element   xpath=//td[contains(., '${cpv}')]
  Sleep  2
  Click Element   xpath=//div[contains(@class, 'modal-content')]//button[@class="btn btn-default"]
  Sleep  2
#DKPP
  Click Element                      xpath=(//div[contains(@class, 'col-sm-2')]//input[@class="btn btn-danger"])[last()]
  Sleep  2
  Input text                         xpath=//div[@id='addClassification']//div[@class='modal-header']/input   ${dkpp_desc}
  Sleep  2
  Wait Until Page Contains   ${dkpp_id}   10
  Sleep  2
  Click Element   xpath=//td[contains(., '${dkpp_id}')]
  Click Element                      xpath=//div[contains(@class, 'modal fade ng-scope in')]//button[@ng-click='choose()']
  Sleep  2

Додати багато предметів
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  items
  ${Items_length}=   Get Length   ${items}
  : FOR    ${INDEX}    IN RANGE    1    ${Items_length}
  \   Click Element   xpath=//*[text()=' Додати ще один предмет закупівлі']
  \   Додати предмет   ${items[${INDEX}]}   ${INDEX}

Пошук тендера по ідентифікатору
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  Selenium2Library.Switch browser   ${ARGUMENTS[0]}
  Go to   ${BROKERS['${USERS.users['${username}'].broker}'].url}
  Wait Until Page Contains   Прозорі закупівлі    10
  sleep  1
  Input Text  jquery=input[ng-change='searchChange()']  ${ARGUMENTS[1]}
  sleep  3
  Click Link    jquery=a[href^="#/tenderDetailes"]
  Wait Until Page Contains    ${ARGUMENTS[1]}   10
  sleep  1
  Capture Page Screenshot

Завантажити документ
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  ${Complain}
  Fail   Тест не написаний

Подати скаргу
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  ${Complain}
  Fail  Не реалізований функціонал

порівняти скаргу
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${file_path}
  ...      ${ARGUMENTS[2]} ==  ${TENDER_UAID}
  Fail  Не реалізований функціонал

Подати цінову пропозицію
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  ${test_bid_data}
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  ${bid}=        Get From Dictionary   ${ARGUMENTS[2].data.value}         amount
  Sleep  30
  etender.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  DEBUG
  Wait Until Page Contains          Інформація про процедуру закупівлі    10
  Wait Until Page Contains Element          id=amount   10
  Input text    id=amount   ${bid}
  Sleep  2
## Тест не проходить так як, не натискається button 'Реєстрація пропозиції'. Мануально все проходить. Потрібен запуск на ще одній машині, і тоді досліджувати!
  Click Element                        xpath=//*[text()='Реєстрація пропозиції']
  Sleep  2
  Click Element               xpath=(//div[@class='row']/button[@class='btn btn-success'])[2]
  Sleep  2

скасувати цінову пропозицію
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  etender.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Sleep  2
  Click Element               xpath=//button[@class='btn-sm btn-danger ng-isolate-scope']
  Sleep  5

Змінити цінову пропозицію
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} ==  ${test_bid_data}
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  etender.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Wait Until Page Contains          Інформація про процедуру закупівлі    10
  Wait Until Page Contains Element          name=amount   10
  Run keyword if   '${TEST NAME}' == 'Можливість змінити повторну цінову пропозицію до 50000'   Змінити на 50000
  Run keyword if   '${TEST NAME}' == 'Можливість змінити повторну цінову пропозицію до 10'   Змінити на 10

Змінити на 50000
  Input text    id=amount   50000
  Click Element      xpath=//button[@class='btn-sm btn-success ng-isolate-scope']
  Sleep  2

Змінити на 10
  Input text    id=amount   10
  Click Element      xpath=//button[@class='btn-sm btn-success ng-isolate-scope']
  Sleep  2

Оновити сторінку з тендером
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} =  username
  ...      ${ARGUMENTS[1]} =  ${TENDER_UAID}
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  Reload Page
  Sleep  3

Задати питання
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} = question_data
  ${title}=        Get From Dictionary  ${ARGUMENTS[2].data}  title
  ${description}=  Get From Dictionary  ${ARGUMENTS[2].data}  description
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  etender.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Wait Until Page Contains Element   jquery=a[href^="#/addQuestion/"]   10
  Click Element                      jquery=a[href^="#/addQuestion/"]
  Wait Until Page Contains Element   id=title   10
  Input text                         id=title                 ${title}
  Input text                         xpath=//textarea[@id=' description']           ${description}
  Click Element                      xpath=//div[contains(@class, 'form-actions')]//button[@type='submit']

Відповісти на питання
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} = username
  ...      ${ARGUMENTS[1]} = ${TENDER_UAID}
  ...      ${ARGUMENTS[2]} = 0
  ...      ${ARGUMENTS[3]} = answer_data
  ${answer}=     Get From Dictionary  ${ARGUMENTS[3].data}  answer
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  etender.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Wait Until Page Contains Element   xpath=//pre[@class='ng-binding'][text()='Додати відповідь']   10
  Click Element                      xpath=//pre[@class='ng-binding'][text()='Додати відповідь']
  Input text                         xpath=//div[@class='editable-controls form-group']//textarea            ${answer}
  Click Element                      xpath=//span[@class='editable-buttons']/button[@type='submit']

Внести зміни в тендер
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} =  username
  ...      ${ARGUMENTS[1]} =  ${TENDER_UAID}
  ${ADDITIONAL_DATA}=   prepare_Front_end_initial_data  ${BROKERS['${USERS.users['${tender_owner}'].broker}'].period_interval}   single
  ${items}=         Get From Dictionary   ${INITIAL_TENDER_DATA.data}               items
  ${description}=   Get From Dictionary   ${items[0]}         description
  Selenium2Library.Switch Browser    ${ARGUMENTS[0]}
  etender.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Wait Until Page Contains Element   xpath=//a[@class='btn btn-primary ng-scope']   10
  Click Element              xpath=//a[@class='btn btn-primary ng-scope']
  Sleep  2
  Input text               id=description    ${description}
  Sleep  5
  Click Element              xpath=//button[@class='btn btn-info ng-isolate-scope']
  Capture Page Screenshot

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
  Sleep  2
  etender.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Sleep  2
  Click Element                     xpath=//a[@class='btn btn-primary ng-scope']
  Sleep  2
  Click Element   xpath=(//button[@class='btn btn-danger ng-scope'])[last()]
  Sleep  2
  Click Element   xpath=(//button[@class='btn btn-danger ng-scope'])[last()]
  Sleep  2
  Click Element   xpath=(//button[@class='btn btn-danger ng-scope'])[last()]
  Sleep  1
  : FOR    ${INDEX}    IN RANGE    2    ${ARGUMENTS[2]} +2
  \   Click Element   xpath=//*[text()=' Додати ще один предмет закупівлі']
  \   Додати предмет   ${items[${INDEX}]}   ${INDEX}
  Sleep  3
  DEBUG
  Click Element   xpath=//div[@class='form-actions']/button[./text()='Зберегти зміни']
  Wait Until Page Contains    [ТЕСТУВАННЯ]   10

видалити позиції
  etender.Пошук тендера по ідентифікатору   ${ARGUMENTS[0]}   ${ARGUMENTS[1]}
  Click Element                     xpath=//a[@class='btn btn-primary ng-scope']
  Sleep  2
  : FOR    ${INDEX}    IN RANGE    0    ${ARGUMENTS[2]}
  \   Click Element   xpath=(//button[@class='btn btn-danger ng-scope'])[last()]
  \   Sleep  1
  Sleep  3
  Wait Until Page Contains Element   xpath=//div[@class='form-actions']/button[./text()='Зберегти зміни']   10
  Click Element   xpath=//div[@class='form-actions']/button[./text()='Зберегти зміни']
  Wait Until Page Contains    [ТЕСТУВАННЯ]   10

Отримати інформацію із тендера
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]} ==  username
  ...      ${ARGUMENTS[1]} ==  fieldname
  Switch browser   ${ARGUMENTS[0]}
  ${return_value}=  run keyword  Отримати інформацію про ${ARGUMENTS[1]}
  [return]  ${return_value}

Отримати тест із поля і показати на сторінці
  [Arguments]   ${fieldname}
  sleep  3
  ${return_value}=   Get Text  ${locator.${fieldname}}
  [return]  ${return_value}

Отримати інформацію про title
  ${return_value}=   Отримати тест із поля і показати на сторінці   title
  [return]  ${return_value}

Отримати інформацію про description
  ${return_value}=   Отримати тест із поля і показати на сторінці   description
  [return]  ${return_value}

Отримати інформацію про minimalStep.amount
  ${return_value}=   Отримати тест із поля і показати на сторінці   minimalStep.amount
  ${return_value}=   Convert To Number   ${return_value.split(' ')[0]}
  [return]  ${return_value}

Отримати інформацію про value.amount
  ${return_value}=   Отримати тест із поля і показати на сторінці   value.amount
  ${return_value}=   Get Substring   ${return_value}   0   6
  ${return_value}=   Convert To Number   ${return_value}
  [return]  ${return_value}

Отримати інформацію про tenderId
  ${return_value}=   Отримати тест із поля і показати на сторінці   tenderId
  [return]  ${return_value.split(' ')[1]}

Отримати інформацію про procuringEntity.name
  ${return_value}=   Отримати тест із поля і показати на сторінці   procuringEntity.name
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
  ${return_value}=   Отримати тест із поля і показати на сторінці   enquiryPeriod.startDate
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]  ${return_value}

Отримати інформацію про enquiryPeriod.endDate
  ${return_value}=   Отримати тест із поля і показати на сторінці  tenderPeriod.startDate
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
Отримати інформацію про items[0].description
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

#1
Отримати інформацію про items[0].deliveryLocation.latitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[0]}   ,
  [return]  ${return_value}
#2
Отримати інформацію про items[1].deliveryLocation.latitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[0]}   ,
  [return]  ${return_value}
#3
Отримати інформацію про items[2].deliveryLocation.latitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[0]}   ,
  [return]  ${return_value}
#4
Отримати інформацію про items[3].deliveryLocation.latitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[0]}   ,
  [return]  ${return_value}
#5
Отримати інформацію про items[4].deliveryLocation.latitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[0]}   ,
  [return]  ${return_value}

#1
Отримати інформацію про items[0].deliveryLocation.longitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   ,
  [return]  ${return_value}
#2
Отримати інформацію про items[1].deliveryLocation.longitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   ,
  [return]  ${return_value}
#3
Отримати інформацію про items[2].deliveryLocation.longitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   ,
  [return]  ${return_value}
#4
Отримати інформацію про items[3].deliveryLocation.longitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   ,
  [return]  ${return_value}
#5
Отримати інформацію про items[4].deliveryLocation.longitude
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].deliveryLocation.latitude
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   ,
  [return]  ${return_value}

#1
Отримати інформацію про items[0].unit.name
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}
#2
Отримати інформацію про items[1].unit.name
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}
#3
Отримати інформацію про items[2].unit.name
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}
#4
Отримати інформацію про items[3].unit.name
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}
#5
Отримати інформацію про items[4].unit.name
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}

#1
Отримати інформацію про items[0].unit.code
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}
#2
Отримати інформацію про items[1].unit.code
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}
#3
Отримати інформацію про items[2].unit.code
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].unit.name
  ${return_value}=   Remove String  ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}
#4
Отримати інформацію про items[3].unit.code
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}
#5
Отримати інформацію про items[4].unit.code
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].unit.name
  ${return_value}=   Remove String   ${return_value.split(' ')[1]}   .
  ${return_value}=   Run keyword if    '${return_value}'== 'шт'   Convert To String  штуки
  [return]  ${return_value}

#1
Отримати інформацію про items[0].quantity
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[0].unit.name
  ${return_value}=   Convert To Number   ${return_value.split(' ')[0]}
  [return]  ${return_value}
#2
Отримати інформацію про items[1].quantity
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[1].unit.name
  ${return_value}=   Convert To Number   ${return_value.split(' ')[0]}
  [return]  ${return_value}
#3
Отримати інформацію про items[2].quantity
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[2].unit.name
  ${return_value}=   Convert To Number   ${return_value.split(' ')[0]}
  [return]  ${return_value}
#4
Отримати інформацію про items[3].quantity
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[3].unit.name
  ${return_value}=   Convert To Number   ${return_value.split(' ')[0]}
  [return]  ${return_value}
#5
Отримати інформацію про items[4].quantity
  ${return_value}=   Отримати тест із поля і показати на сторінці   items[4].unit.name
  ${return_value}=   Convert To Number   ${return_value.split(' ')[0]}
  [return]  ${return_value}

#1
Отримати інформацію про items[0].classification.id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.id
  [return]  ${return_value.split(' ')[0]}
#2
Отримати інформацію про items[1].classification.id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.id
  [return]  ${return_value.split(' ')[0]}
#3
Отримати інформацію про items[2].classification.id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.id
  [return]  ${return_value.split(' ')[0]}
#4
Отримати інформацію про items[3].classification.id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.id
  [return]  ${return_value.split(' ')[0]}
#5
Отримати інформацію про items[4].classification.id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.id
  [return]  ${return_value.split(' ')[0]}

#1
Отримати інформацію про items[0].classification.scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}
#2
Отримати інформацію про items[1].classification.scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}
#3
Отримати інформацію про items[2].classification.scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}
#4
Отримати інформацію про items[3].classification.scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}
#5
Отримати інформацію про items[4].classification.scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}

#1
Отримати інформацію про items[0].classification.description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.description
  [return]  ${return_value.split(' ',1)[1]}
#2
Отримати інформацію про items[1].classification.description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.description
  [return]  ${return_value.split(' ',1)[1]}
#3
Отримати інформацію про items[2].classification.description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.description
  [return]  ${return_value.split(' ',1)[1]}
#4
Отримати інформацію про items[3].classification.description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.description
  [return]  ${return_value.split(' ',1)[1]}
#5
Отримати інформацію про items[4].classification.description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].classification.description
  [return]  ${return_value.split(' ',1)[1]}

#1
Отримати інформацію про items[0].additionalClassifications[0].id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].id
  [return]  ${return_value.split(' ')[0]}
#2
Отримати інформацію про items[1].additionalClassifications[0].id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[1].additionalClassifications[0].id
  [return]  ${return_value.split(' ')[0]}
#3
Отримати інформацію про items[2].additionalClassifications[0].id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[2].additionalClassifications[0].id
  [return]  ${return_value.split(' ')[0]}
#4
Отримати інформацію про items[3].additionalClassifications[0].id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[3].additionalClassifications[0].id
  [return]  ${return_value.split(' ')[0]}
#5
Отримати інформацію про items[4].additionalClassifications[0].id
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[4].additionalClassifications[0].id
  [return]  ${return_value.split(' ')[0]}

#1
Отримати інформацію про items[0].additionalClassifications[0].scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}
#2
Отримати інформацію про items[1].additionalClassifications[0].scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}
#3
Отримати інформацію про items[2].additionalClassifications[0].scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}
#4
Отримати інформацію про items[3].additionalClassifications[0].scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}
#5
Отримати інформацію про items[4].additionalClassifications[0].scheme
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].scheme
  ${return_value}=    Remove String   ${return_value.split(' ')[1]}   :
  [return]  ${return_value}

#1
Отримати інформацію про items[0].additionalClassifications[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].additionalClassifications[0].description
  [return]  ${return_value.split(' ',1)[1]}
#2
Отримати інформацію про items[1].additionalClassifications[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[1].additionalClassifications[0].description
  [return]  ${return_value.split(' ',1)[1]}
#3
Отримати інформацію про items[2].additionalClassifications[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[2].additionalClassifications[0].description
  [return]  ${return_value.split(' ',1)[1]}
#4
Отримати інформацію про items[3].additionalClassifications[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[3].additionalClassifications[0].description
  [return]  ${return_value.split(' ',1)[1]}
#5
Отримати інформацію про items[4].additionalClassifications[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[4].additionalClassifications[0].description
  [return]  ${return_value.split(' ',1)[1]}

#1
Отримати інформацію про items[0].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].deliveryAddress.postalCode
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#2
Отримати інформацію про items[1].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[1].deliveryAddress.postalCode
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#3
Отримати інформацію про items[2].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[2].deliveryAddress.postalCode
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#4
Отримати інформацію про items[3].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[3].deliveryAddress.postalCode
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#5
Отримати інформацію про items[4].deliveryAddress.postalCode
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[4].deliveryAddress.postalCode
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}

#1
Отримати інформацію про items[0].deliveryAddress.countryName
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].deliveryAddress.countryName
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#2
Отримати інформацію про items[1].deliveryAddress.countryName
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[1].deliveryAddress.countryName
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#3
Отримати інформацію про items[2].deliveryAddress.countryName
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[2].deliveryAddress.countryName
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#4
Отримати інформацію про items[3].deliveryAddress.countryName
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[3].deliveryAddress.countryName
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#5
Отримати інформацію про items[4].deliveryAddress.countryName
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[4].deliveryAddress.countryName
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}

#1
Отримати інформацію про items[0].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].deliveryAddress.region
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#2
Отримати інформацію про items[1].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[1].deliveryAddress.region
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#3
Отримати інформацію про items[2].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[2].deliveryAddress.region
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#4
Отримати інформацію про items[3].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[3].deliveryAddress.region
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#5
Отримати інформацію про items[4].deliveryAddress.region
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[4].deliveryAddress.region
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}

#1
Отримати інформацію про items[0].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].deliveryAddress.locality
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#2
Отримати інформацію про items[1].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[1].deliveryAddress.locality
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#3
Отримати інформацію про items[2].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[2].deliveryAddress.locality
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#4
Отримати інформацію про items[3].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[3].deliveryAddress.locality
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}
#5
Отримати інформацію про items[4].deliveryAddress.locality
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[4].deliveryAddress.locality
  ${return_value}=   Remove String   ${return_value}  ,
  [return]  ${return_value}

#1
Отримати інформацію про items[0].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].deliveryAddress.streetAddress
  [return]  ${return_value}
#2
Отримати інформацію про items[1].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[1].deliveryAddress.streetAddress
  [return]  ${return_value}
#3
Отримати інформацію про items[2].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[2].deliveryAddress.streetAddress
  [return]  ${return_value}
#4
Отримати інформацію про items[3].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[3].deliveryAddress.streetAddress
  [return]  ${return_value}
#5
Отримати інформацію про items[4].deliveryAddress.streetAddress
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[4].deliveryAddress.streetAddress
  [return]  ${return_value}

#1
Отримати інформацію про items[0].deliveryDate.endDate
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[0].deliveryDate.endDate
  ${return_value}=   Change_time_for_deliveryDate   ${return_value}
  [return]  ${return_value}
#2
Отримати інформацію про items[1].deliveryDate.endDate
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[1].deliveryDate.endDate
  ${return_value}=   Change_time_for_deliveryDate   ${return_value}

  [return]  ${return_value}
#3
Отримати інформацію про items[2].deliveryDate.endDate
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[2].deliveryDate.endDate
  ${return_value}=   Change_time_for_deliveryDate   ${return_value}
  [return]  ${return_value}
#4
Отримати інформацію про items[3].deliveryDate.endDate
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[3].deliveryDate.endDate
  ${return_value}=   Change_time_for_deliveryDate   ${return_value}
  [return]  ${return_value}
#5
Отримати інформацію про items[4].deliveryDate.endDate
  ${return_value}=   Отримати тест із поля і показати на сторінці  items[4].deliveryDate.endDate
  ${return_value}=   Change_time_for_deliveryDate   ${return_value}
  [return]  ${return_value}

Отримати інформацію про questions[0].title
  ${return_value}=   Отримати тест із поля і показати на сторінці   questions[0].title
  [return]  ${return_value}

Отримати інформацію про questions[0].description
  ${return_value}=   Отримати тест із поля і показати на сторінці   questions[0].description
  [return]  ${return_value}

Отримати інформацію про questions[0].date
  ${return_value}=   Отримати тест із поля і показати на сторінці   questions[0].date
  ${return_value}=   Change_day_to_month   ${return_value}
  [return]  ${return_value}

Отримати інформацію про questions[0].answer
  ${return_value}=   Отримати тест із поля і показати на сторінці   questions[0].answer
  [return]  ${return_value}

Change_time_for_deliveryDate
  [Arguments]  @{ARGUMENTS}
  [Documentation]
  ...      ${ARGUMENTS[0]}  ==  date
  ${time}=   Отримати тест із поля і показати на сторінці   enquiryPeriod.endDate
  ${time}=   Get Substring   ${time}   11
  ${day}=   Get Substring   ${return_value}   16   18
  ${month}=   Get Substring   ${return_value}   18   22
  ${year}=   Get Substring   ${return_value}   22
  ${return_value}=   Convert To String  ${year}${month}${day}${time}
  ${return_value}=   subtract_from_date   ${return_value}   12   0
  [return]  ${return_value}