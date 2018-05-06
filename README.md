
<p align="center">
  <img src="https://camo.githubusercontent.com/b18993cbfe91de8abdc0019dc9a6cd44707eec21/68747470733a2f2f6431337961637572716a676172612e636c6f756466726f6e742e6e65742f75736572732f3338313133332f73637265656e73686f74732f313639363538302f766266706f70666c6174627574746f6e332e676966" width="600" height="300" />
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/react-native-iconic"><img src="http://img.shields.io/npm/v/react-native-iconic.svg?style=flat" /></a>
  <a href="https://github.com/prscX/react-native-iconic/pulls"><img alt="PRs Welcome" src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" /></a>
  <a href="https://github.com/prscX/react-native-iconic#License"><img src="https://img.shields.io/npm/l/react-native-iconic.svg?style=flat" /></a>
</p>


# React Native Iconic

React Native Bridge for [iOS: VBFPopFlatButton](https://github.com/victorBaro/VBFPopFlatButton) & [Android: balysv/material-menu](https://github.com/balysv/material-menu)


Before we dive into on how to use this library. We would like to thank all the contributor of [iOS: VBFPopFlatButton](https://github.com/victorBaro/VBFPopFlatButton) & [Android: balysv/material-menu](https://github.com/balysv/material-menu) for providing such a awesome nice, cool library

| **[iOS: VBFPopFlatButton](https://github.com/victorBaro/VBFPopFlatButton)**             |
| ----------------- |
| Flat button with 21 different states and 2 types animated using pop. |


| **Android: [Android: balysv/material-menu](https://github.com/balysv/material-menu)**             |
| ----------------- |
| <img src="https://camo.githubusercontent.com/642bd91749dce58abfba00fe1cefdf2cf4213fd3/68747470733a2f2f7261772e6769746875622e636f6d2f62616c7973762f6d6174657269616c2d6d656e752f6d61737465722f6172742f64656d6f2e676966" />                  |

> Morphing Android menu, back, dismiss and check buttons


| **Android: [Android: zagum/Android-ExpandIcon](https://github.com/zagum/Android-ExpandIcon)**             |
| ----------------- |
| <img src="https://github.com/zagum/Android-ExpandIcon/raw/master/art/expand_icon_demo.gif" />                  |



## Getting started

`$ npm install react-native-iconic --save`

`$ react-native link react-native-iconic`

- **Android**

Please add below snippet into your app build.gradle:

```javascript
allprojects {
    repositories {
        maven { url 'https://jitpack.io' }
    }
}
```

- **iOS**

`$ cd ./node_modules/react-native-iconic/ios/ && pod install`


## Usage
```javascript
import RNIconic from 'react-native-iconic';

// TODO: What to do with the module?
<RNIconic shape={shapes} tintColor={"#FFFFFF"} color={"#fc4426"} size={100} selection={0} disable={false} lineThickness={5} />
```


## iOS Shapes
- `Add, Minus, Close, Back, Forward, Menu, Download, Share, DownBasic, UpBasic, Paused, DownArrow, RightTriangle, LeftTriangle, UpTriangle, DownTriangle, Ok, Rewind, FastForward, Square`

## Android Shapes
- `BURGER, ARROW, X, CHECK`
- `DownBasic, UpBasic`

## Props

  - **Generic**

| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `shape`       | `array`     |         | Array of shape sequence
| `selection`      | `int`     |         | Default position of shape
| `color`       | `string`     |         | Specify icon color                                                            |
| `size` | `int` |         | Size of Icon                                                   |  |
| `disabled`    | `bool`     |         | Disabling the Icon Button                                        |  |
| `onChange`      | `func`     |         | It is invoke then the value of shine button is change
| `tintColor`           | `array`     |         | Color of background circle |

  - **iOS**

| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `lineThickness`     | `string` |         | Thickness of icon line                                                      |
| `rounded`           | `bool`     |         | For having circle in background |



## Credits

- iOS Lib: [VBFPopFlatButton](https://github.com/victorBaro/VBFPopFlatButton) for iOS implement
- Android Lib: [balysv/material-menu](https://github.com/balysv/material-menu) for Android implement
- Android Lib: [zagum/Android-ExpandIcon](https://github.com/zagum/Android-ExpandIcon)

## Contribution
Contributions are welcome and are greatly appreciated! Every little bit helps, and credit will always be given.

> Please feel free to raise PR/Request in case you want to any icon animation library to this project

## License
Copyright @2017 Pranav Raj Singh Chauhan

RNIconic is provided under the Apache 2.0 License.

