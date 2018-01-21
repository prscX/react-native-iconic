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
    return <View style={styles.container}>
        <RNIconic shape={"heart"} color={"#808080"} fillColor={"#ff0000"} size={100} />
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