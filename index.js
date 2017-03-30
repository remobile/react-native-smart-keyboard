'use strict';

const ReactNative = require('react-native');
const {
    NativeModules,
    Platform,
} = ReactNative;

module.exports = Platform.OS === 'ios' ? NativeModules.SmartKeyboard : {
    enable () {},
    disable () {},
};
