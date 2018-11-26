import QtQuick 2.4

LoginForm {
    id: userLogin

    signal showRegisterPage
    signal showMainWindow

    loadButton.onClicked: {
        console.log("login button clicked.")
        showMainWindow()
    }
    autoLoad.onCheckedChanged: {
        console.log("auto load flag ", rememberPsd.checked)
    }
    rememberPsd.onCheckedChanged: {
        console.log("remember password flag ", rememberPsd.checked)
    }
    webButton.onClicked: {
        console.log("open website www.trafficlab.cn")
    }
    forgetPsd.onClicked: {
        console.log("forget password...")
    }

    register.onClicked: {
        showRegisterPage()
        console.log("register now...")
    }
    anchors.fill: parent
    user.maximumLength: userLoginSettings.maxLenthUserName
    password.maximumLength: userLoginSettings.maxLenthPassword
}
