*** Settings ***
# Suite Setup                   Setup
# Suite Teardown                Teardown
# Test Setup                    Reset Emulation
# Test Teardown                 Test Teardown
Test Setup                   Setup
Test Teardown                Teardown
Resource                      ${RENODEKEYWORDS}

*** Variables ***
${SCRIPT}                     ${CURDIR}/test.resc
${UART}                       sysbus.uart


*** Keywords ***
Load Script
    Execute Script            ${SCRIPT}
    Create Terminal Tester    ${UART}


*** Test Cases ***
One
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong
    Set Global Variable         ${SKIP_RUNNING_SERVER}    ${False}

Two
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Three
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Four
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Five
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Six
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Seven
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Eight
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Nine
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Ten
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

Eleven
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong