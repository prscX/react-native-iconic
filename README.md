
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

> Flat button with 21 different states and 2 types animated using pop.


| **Android: [Android: balysv/material-menu](https://github.com/balysv/material-menu)**             |
| ----------------- |
| <img src="https://camo.githubusercontent.com/642bd91749dce58abfba00fe1cefdf2cf4213fd3/68747470733a2f2f7261772e6769746875622e636f6d2f62616c7973762f6d6174657269616c2d6d656e752f6d61737465722f6172742f64656d6f2e676966" width="600" />                  |

> Morphing Android menu, back, dismiss and check buttons


## Getting started

- `$ npm install react-native-iconic --save`

- `$ react-native link react-native-iconic`


## Usage
```javascript
import RNIconic from 'react-native-iconic';

// TODO: What to do with the module?
<RNIconic shape={shapes} roundBackgroundColor={"#FFFFFF"} tintColor={"#fc4426"} size={100} selection={0} disable={false} lineThickness={5} />
```
  
## iOS Shapes
`Add, Minus, Close, Back, Forward, Menu, Download, Share, DownBasic, UpBasic, Paused, DownArrow, RightTriangle, LeftTriangle, UpTriangle, DownTriangle, Ok, Rewind, FastForward, Square`

## Android Shapes
`BURGER, ARROW, X, CHECK`

## Props



| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `shape`       | `array`     |         | Array of shape sequence
| `selection`      | `int`     |         | Default position of shape
| `tintColor`       | `string`     |         | Color of the icon line                                                            |
| `lineThickness`     | `string` |         | Thickness of icon line                                                      |
| `size` | `int` |         | Size of Icon                                                   |  |
| `disabled`    | `bool`     |         | Disabling the Icon Button                                        |  |
| `onChange`      | `func`     |         | It is invoke then the value of shine button is change
| `rounded`           | `bool`     |         | For having circle in background |
| `roundBackgroundColor`           | `array`     |         | Color of background circle |


## Credits

- iOS lib [iOS: VBFPopFlatButton](https://github.com/victorBaro/VBFPopFlatButton) for iOS implement
- Android lib [Android: balysv/material-menu](https://github.com/balysv/material-menu) for Android implement

## Contribution
Contributions are welcome and are greatly appreciated! Every little bit helps, and credit will always be given.

> Please feel free to raise PR/Request in case you want to any icon animation library to this project

## License
Copyright @2017 Pranav Raj Singh Chauhan

RNIconic is provided under the MIT License.




## Other Contributions

| [awesome-react-native-native-modules](https://github.com/prscX/awesome-react-native-native-modules)              |
| ----------------- |
| <img src="https://github.com/prscX/awesome-react-native-native-modules/raw/master/assets/hero.png" width="600" height="300" />                  |


| [react-native-spruce](https://github.com/prscX/react-native-spruce)              |
| ----------------- |
| <img src="https://github.com/willowtreeapps/spruce-ios/raw/master/imgs/extensibility-tests.gif" width="600" height="300" />                  |


| [react-native-taptargetview](https://github.com/prscX/react-native-taptargetview) & [react-native-material-showcase-ios](https://github.com/prscX/react-native-material-showcase-ios)              |
| ----------------- |
| <img src="https://github.com/KeepSafe/TapTargetView/raw/master/.github/video.gif" width="600" height="600" />  |


| [react-native-bottom-action-sheet](https://github.com/prscX/react-native-bottom-action-sheet)              |
| ----------------- |
| <img src="https://github.com/rubensousa/BottomSheetBuilder/raw/master/screens/normal_demo.gif" width="600" height="600" />                  |


| [react-native-popover-menu](https://github.com/prscX/react-native-popover-menu)             |
| ----------------- |
| <img src="https://github.com/zawadz88/MaterialPopupMenu/raw/master/art/components_menus.png" width="600" height="300" />                  |


| [react-native-tooltips](https://github.com/prscX/react-native-tooltips)             |
| ----------------- |
| <img src="https://camo.githubusercontent.com/add1764d27026b81adb117e07a10781c9abbde1b/687474703a2f2f692e696d6775722e636f6d2f4f4e383257526c2e676966" width="600" height="300" />                  |


| [react-native-shine-button](https://github.com/prscX/react-native-shine-button)             |
| ----------------- |
| <img src="https://raw.githubusercontent.com/ChadCSong/ShineButton/master/demo_shine_others.gif" width="600" height="300" />                  |



| [react-native-download-button](https://github.com/prscX/react-native-download-button)             |
| ----------------- |
| <img src="https://github.com/fenjuly/ArrowDownloadButton/raw/master/screenshots/arrowdownloadbutton.gif" width="600" height="600" />                  |


| [react-native-siri-wave-view](https://github.com/prscX/react-native-siri-wave-view)             |
| ----------------- |
| <img src="https://cdn.dribbble.com/users/341264/screenshots/2203511/wave.gif" width="600" height="300" />                  |


|  [react-native-material-shadows](https://github.com/prscX/react-native-material-shadows)             |
| ----------------- |
| <img src="https://raw.githubusercontent.com/harjot-oberai/MaterialShadows/master/screens/cover.png" width="600" height="300" />                  |


|  [react-native-gradient-blur-view](https://github.com/prscX/react-native-gradient-blur-view)             |
| ----------------- |
| <img src="https://github.com/prscX/react-native-gradient-blur-view/raw/master/assets/hero.png" width="600" height="300" />                  |


|  [react-native-about-libraries](https://github.com/prscX/react-native-about-libraries)             |
| ----------------- |
| <img src="https://github.com/prscX/react-native-about-libraries/raw/master/hero.png" width="600" height="600" />                  |



|  [vs-essential-plugins](https://github.com/prscX/vs-essential-plugins)             |
| ----------------- |
| <img src="https://pbs.twimg.com/profile_images/922911523328081920/jEKFRPKV_400x400.jpg" width="600" height="300" />                  |


|  [prettier-pack](https://github.com/prscX/prettier-pack)             |
| ----------------- |
| <img src="https://raw.githubusercontent.com/prettier/prettier-logo/master/images/prettier-banner-light.png" width="600" height="300" />                  |

