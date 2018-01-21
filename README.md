
# react-native-iconic

## Getting started

`$ npm install react-native-iconic --save`

### Mostly automatic installation

`$ react-native link react-native-iconic`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-iconic` and add `RNIconic.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIconic.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNIconicPackage;` to the imports at the top of the file
  - Add `new RNIconicPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-iconic'
  	project(':react-native-iconic').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-iconic/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-iconic')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNIconic.sln` in `node_modules/react-native-iconic/windows/RNIconic.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Iconic.RNIconic;` to the usings at the top of the file
  - Add `new RNIconicPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNIconic from 'react-native-iconic';

// TODO: What to do with the module?
RNIconic;
```
  