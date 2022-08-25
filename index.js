import { NativeModules } from "react-native";

const { Asam } = NativeModules;

export const enterSingleAppMode = Asam ? Asam.enterSingleAppMode : undefined;
export const exitSingleAppMode = Asam ? Asam.exitSingleAppMode : undefined;
export const isSingleAppModeEnabled = Asam
  ? Asam.isSingleAppModeEnabled
  : undefined;

export default Asam;
