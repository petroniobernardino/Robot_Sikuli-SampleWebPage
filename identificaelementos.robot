*** Settings ***

Documentation       Identificar Elementos com o Sikuli

Library         SikuliLibrary
Suite Setup     Carrega Elementos
Suite Teardown  Stop Remote Server

*** Variable ***
${IMAGE_DIR}        ${CURDIR}\\elements


*** Test Case ***
Testa inicio do teste
    Click               Inicio.png
    Click               Atualizar.png
    Click               Branco.png    
    Press Special Key   PAGE_UP
    Exists              ThisIsSampleText.png                5
    Click               ThisIsALink.png
    Click               Voltar.png
    Exists              TextBox.png                         5
    Input Text          TextBox.png                         Passei por aqui !!!
    Click               Button.png
    Exists              ButtonGreen.png                     5
    Click               RadioButton-Male.png                xOffset=-20     yOffset=0	
    Click               CheckBox-PerformanceTesting.png     xOffset=-85     yOffset=0	 
    Click               DropBox.png
    Click               DropBox-ManualTesting.png
    Click               Branco.png
    Press Special Key   PAGE_DOWN
    Double Click        DoubleClickToGenerateAlertBox.png
    Click               ok_alert.png
    Click               GenerateAlertBox.png
    Click               ok_alert.png
    Click               GenerateConfirmBox.png
    Click               Cancel-Alert.png
    Exists              YouPressedCancel.png                 1 
    Drag And Drop       JavaPoint.png                       Area-DragAndDrop.png    
    Capture Screen        

*** Keywords ***
Carrega Elementos
    Add Image Path       ${IMAGE_DIR}