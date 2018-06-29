
<h1 align="center">

<p align="center">
  <img src="https://camo.githubusercontent.com/f4bca08c57847fa1d120f3c258aa7af8e18dfb9b/68747470733a2f2f63646e2e6472696262626c652e636f6d2f75736572732f3338313133332f73637265656e73686f74732f313639363538302f766266706f70666c6174627574746f6e332e676966" width="300"/>
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/react-native-iconic"><img src="http://img.shields.io/npm/v/react-native-iconic.svg?style=flat" /></a>
  <a href="https://github.com/prscX/react-native-iconic/pulls"><img alt="PRs Welcome" src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" /></a>
  <a href="https://github.com/prscX/react-native-iconic#License"><img src="https://img.shields.io/npm/l/react-native-iconic.svg?style=flat" /></a>
</p>


    ReactNative: Native Iconic (Android/iOS)

If this project has helped you out, please support us with a star 🌟
</h1>

React Native Bridge for below native libraries:


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



## 📖 Getting started

`$ npm install react-native-iconic --save`

`$ react-native link react-native-iconic`

- **Android**

Please add below snippet into your app build.gradle:

```javascript
buildscript {
    repositories {
        jcenter()
        maven { url "https://maven.google.com" }
        maven { url "https://jitpack.io" }
        ...
    }
}

allprojects {
    repositories {
        mavenLocal()
        jcenter()
        maven { url "https://maven.google.com" }
        maven { url "https://jitpack.io" }
        ...
    }
}
```

- **iOS**

  - After `react-native link react-native-iconic`, please verify `node_modules/react-native-iconic/ios/` contains `Pods` folder. If does not exist please execute `pod install` command on `node_modules/react-native-iconic/ios/`, if any error => try `pod repo update` then `pod install`



## 💻 Usage

```javascript
import RNIconic from 'react-native-iconic';

// TODO: What to do with the module?
<RNIconic shape={shapes} tintColor={"#FFFFFF"} color={"#fc4426"} size={100} selection={0} disable={false} lineThickness={5} />
```

## Shapes

**iOS**
- `Add, Minus, Close, Back, Forward, Menu, Download, Share, DownBasic, UpBasic, Paused, DownArrow, RightTriangle, LeftTriangle, UpTriangle, DownTriangle, Ok, Rewind, FastForward, Square`

**Android**
- `BURGER, ARROW, X, CHECK`
- `DownBasic, UpBasic`

## 💡 Props

  - **Generic**

| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `shape`       | `array`     |         | Array of shape sequence
| `selection`      | `int`     |         | Default position of shape
| `color`       | `string`     |         | Specify icon color                                                            |
| `size` | `int` |         | Size of Icon                                                   |  |
| `disabled`    | `bool`     |         | Disabling the Icon Button                                        |  |
| `onChange`      | `func`     |         | It is invoke when the value of button is change
| `tintColor`           | `array`     |         | Color of background circle |

  - **iOS**

| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `lineThickness`     | `string` |         | Thickness of icon line                                                      |
| `rounded`           | `bool`     |         | For having circle in background |


## ✨ Credits

- iOS Lib: [VBFPopFlatButton](https://github.com/victorBaro/VBFPopFlatButton) for iOS implement
- Android Lib: [balysv/material-menu](https://github.com/balysv/material-menu) for Android implement
- Android Lib: [zagum/Android-ExpandIcon](https://github.com/zagum/Android-ExpandIcon)

## 🤔 How to contribute
Have an idea? Found a bug? Please raise to [ISSUES](https://github.com/prscX/react-native-iconic/issues).
Contributions are welcome and are greatly appreciated! Every little bit helps, and credit will always be given.

## 💫 Where is this library used?
If you are using this library in one of your projects, add it in this list below. ✨


## 📜 License
This library is provided under the Apache License.

RNIconic @ [prscX](https://github.com/prscX)

## 💖 Support my projects
I open-source almost everything I can, and I try to reply everyone needing help using these projects. Obviously, this takes time. You can integrate and use these projects in your applications for free! You can even change the source code and redistribute (even resell it).

However, if you get some profit from this or just want to encourage me to continue creating stuff, there are few ways you can do it:
* Starring and sharing the projects you like 🚀
* If you're feeling especially charitable, please follow [prscX](https://github.com/prscX) on GitHub.

  <a href="https://www.buymeacoffee.com/prscX" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

  Thanks! ❤️
  <br/>
  [prscX.github.io](https://prscx.github.io)
  <br/>
  </ Pranav >