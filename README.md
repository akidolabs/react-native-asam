# react-native-asam

This is a module that allows entering or exiting Autonomous Single App Mode from a react-native application

## Getting started

`$ yarn add react-native-asam`

### Mostly automatic installation

`$ react-native link react-native-asam`

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-asam` and add `Asam.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libAsam.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<


## Usage
```javascript
import { enterSingleAppMode, exitSingleAppMode } from 'react-native-asam';

// To enter single app Mode
enterSingleAppMode();

// To exit single app Mode
exitSingleAppMode();
```
