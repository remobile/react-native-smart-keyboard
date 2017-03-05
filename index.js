'use strict';

var ReactNative = require('react-native');
var {
    NativeModules,
    Platform,
} = ReactNative;

module.exports = Platform.OS==='ios' ? NativeModules.SmartKeyboard : {
    enable(){},
    disable(){},
};
