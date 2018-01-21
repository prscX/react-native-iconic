/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';

import RNIconic from 'react-native-iconic'

export default class App extends Component<{}> {
  render() {
    let shapes = []
    
    if (Platform.OS === "ios") {
      shapes = [
        RNIconic.Shapes.Default,
        RNIconic.Shapes.Add,
        RNIconic.Shapes.Minus,
        RNIconic.Shapes.Close,
        RNIconic.Shapes.Back,
        RNIconic.Shapes.Forward,
        RNIconic.Shapes.Menu,
        RNIconic.Shapes.Download,
        RNIconic.Shapes.Share,
        RNIconic.Shapes.DownBasic,
        RNIconic.Shapes.UpBasic,
        RNIconic.Shapes.Paused,
        RNIconic.Shapes.DownArrow,
        RNIconic.Shapes.RightTriangle,
        RNIconic.Shapes.LeftTriangle,
        RNIconic.Shapes.UpTriangle,
        RNIconic.Shapes.DownTriangle,
        RNIconic.Shapes.Ok,
        RNIconic.Shapes.Rewind,
        RNIconic.Shapes.FastForward,
        RNIconic.Shapes.Square
      ]
    } else if (Platform.OS === "android") {
      shapes = [
        RNIconic.Shapes.BURGER,
        RNIconic.Shapes.ARROW,
        RNIconic.Shapes.X,
        RNIconic.Shapes.CHECK
      ]
    }

    return <View style={styles.container}>
        <RNIconic shape={shapes} roundBackgroundColor={"#FFFFFF"} tintColor={"#fc4426"} size={300} selection={0} disable={false} lineThickness={5} />
      </View>;
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-around",
    alignItems: "center",
    backgroundColor: "#F5FCFF"
  }
});