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

Stuff
    Load Script
    Start Emulation
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart
    Wait For Prompt On Uart     uart:~$
    Write Line To Uart          demo ping
    Wait For Line On Uart       pong

*** Test Cases ***
One
    Stuff

Two
    Stuff

Three
    Stuff

Four
    Stuff

Five
    Stuff

Six
    Stuff

Seven
    Stuff

Eight
    Stuff
Nine
    Stuff

Ten
    Stuff

Eleven
    Stuff

Twelve
    Stuff

Thirteen
    Stuff

Fourteen
    Stuff

Fifteen
    Stuff

Sixteen
    Stuff

Seventeen
    Stuff

Eighteen
    Stuff

Nineteen
    Stuff

Twenty
    Stuff

TwentyOne
    Stuff

TwentyTwo
    Stuff

TwentyThree
    Stuff

TwentyFour
    Stuff

TwentyFive
    Stuff

TwentySix
    Stuff

TwentySeven
    Stuff

TwentyEight
    Stuff

TwentyNine
    Stuff

Thirty
    Stuff

ThirtyOne
    Stuff

ThirtyTwo
    Stuff

ThirtyThree
    Stuff

ThirtyFour
    Stuff

ThirtyFive
    Stuff

ThirtySix
    Stuff

ThirtySeven
    Stuff

ThirtyEight
    Stuff

ThirtyNine
    Stuff

Forty
    Stuff