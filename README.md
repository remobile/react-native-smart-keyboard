# React Native Smart Keyboard (remobile)
A smart keyboard for ios base on IQKeyboardManager[android not needed]

## Installation
```sh
npm install @remobile/react-native-smart-keyboard --save
```

### Installation (iOS)
* Drag RCTSmartKeyboard.xcodeproj to your project on Xcode.
* Click on your main project file (the one that represents the .xcodeproj) select Build Phases and drag libRCTSmartKeyboard.a from the Products folder inside the RCTSmartKeyboard.xcodeproj.

### Android
* android not needed, because it has windowSoftInputMode.


## Usage

### Example
```js
'use strict';

var React = require('react');
var ReactNative = require('react-native');
var {
    StyleSheet,
    TextInput,
    ScrollView,
    TouchableOpacity,
    Text,
} = ReactNative;

const SmartKeyboard = require('@remobile/react-native-smart-keyboard');

module.exports = React.createClass({
    getInitialState() {
        return {
            enable: true
        };
    },
    switchEnable() {
        const {enable} = this.state;
        if (enable) {
            SmartKeyboard.disable();
        } else {
            SmartKeyboard.enable();
        }
        this.setState({enable: !enable});
    },
    render() {
        const {enable} = this.state;
        return (
            <ScrollView>
                <TouchableOpacity onPress={this.switchEnable}>
                    <Text style={styles.instructions}>
                        {enable?'关闭':'开启'}
                    </Text>
                </TouchableOpacity>
                <TextInput
                    placeholder="您的手机号码1"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码2"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码3"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码4"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码5"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码6"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码7"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码8"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码9"
                    style={styles.text_input}
                    />
                <TextInput
                    placeholder="您的手机号码10"
                    style={styles.text_input}
                    />
            </ScrollView>
        );
    }
});

const styles = StyleSheet.create({
    instructions: {
        marginTop: 50,
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
    },
    text_input: {
        height:40,
        width: 250,
        fontSize:14,
        marginBottom: 20,
        paddingLeft: 2,
        alignSelf: 'center',
        backgroundColor: '#FFFFFF',
    },
});
```
### Screencasts

![demo](https://github.com/remobile/react-native-smart-keyboard/blob/master/screencasts/demo.gif)

### Methods
- `enable : PropTypes.function`
- `disable : PropTypes.function`

### see detail use
* https://github.com/remobile/react-native-template
