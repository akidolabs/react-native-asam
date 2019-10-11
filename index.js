import { NativeModules } from 'react-native';

const { Asam } = NativeModules;

export const enterSingleAppMode = Asam.enterSingleAppMode; 
export const exitSingleAppMode = Asam.exitSingleAppMode;

export default Asam;
