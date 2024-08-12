*** Settings ***
Suite Setup                   Override Variable
# Suite Teardown                Teardown
# Test Setup                    Reset Emulation
# Test Teardown                 Test Teardown
Test Setup                   Setup
Test Teardown                Teardown
Resource                      ${RENODEKEYWORDS}
Library         OperatingSystem

*** Variables ***
${SCRIPT}                     ${CURDIR}/test.resc
${UART}                       sysbus.uart


*** Keywords ***
Load Script
    Execute Script            ${SCRIPT}
    Create Terminal Tester    ${UART}

Override Variable
    Set Global Variable        ${PORT_NUMBER}               9999
    Set Global Variable        ${SKIP_RUNNING_SERVER}       False
    Log    ${RENODEKEYWORDS}
    # /home/runner/work/_temp/renode-latest/renode-run.download/tests/renode-keywords.robot
    # /home/runner/work/_temp/renode-latest/renode-run.download/Renode.exe
    # /home/runner/work/_temp/renode-stable/renode-run.download/mono-portable/renode-1.15.1+20240812git11f581187/renode
    ${path}    ${file}    Split Path    ${RENODEKEYWORDS}
    Log    ${path}

    Set Global Variable        ${DIRECTORY}            /home/runner/work/_temp/renode-stable/renode-run.download/mono-portable/renode-1.15.1+20240812git11f581187/
    Set Global Variable        ${BINARY_NAME}          renode


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