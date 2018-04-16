import React, { Component } from "react";
import { StyleSheet, ViewPropTypes, Platform } from "react-native";
import PropTypes from "prop-types";

import { requireNativeComponent } from "react-native";

class RNIconic extends Component {
  _onChange = event => {
    this.props.onChange && this.props.onChange(event.nativeEvent.value);
  };

  render() {
    if (Platform.OS === "ios") {
      return <IconicButton ref={ref => {
            this._iconicButton = ref;
          }} style={{ width: this.props.size, height: this.props.size }} props={{ roundBackgroundColor: this.props.roundBackgroundColor, lineThickness: this.props.lineThickness, tintColor: this.props.tintColor, shape: this.props.shape, selection: this.props.selection, disabled: this.props.disable, size: this.props.size }} onChange={this._onChange} />;
    } else if (Platform.OS === "android") {
      return <IconicButton {...this.props} ref={ref => {
            this._iconicButton = ref;
          }} style={{ width: this.props.size, height: this.props.size }} size={this.props.size} on={this.props.value} color={this.props.color} fillColor={this.props.fillColor} onChange={this._onChange} />;
    }
  }
}

RNIconic.Shapes = {
  Default: "default",
  Add: "add",
  Minus: "minus",
  Close: "close",
  Back: "back",
  Forward: "forward",
  Menu: "menu",
  Download: "download",
  Share: "share",
  DownBasic: "down-basic",
  UpBasic: "up-basic",
  Paused: "paused",
  DownArrow: "down-arrow",
  RightTriangle: "right-triangle",
  LeftTriangle: "left-triangle",
  UpTriangle: "up-triangle",
  DownTriangle: "down-triangle",
  Ok: "ok",
  Rewind: "rewind",
  FastForward: "fast-forward",
  Square: "square",
  BURGER: "BURGER",
  ARROW: "ARROW",
  X: "X",
  CHECK: "CHECK"
};

RNIconic.propTypes = {
  ...ViewPropTypes,

  rounded: PropTypes.bool,
  roundBackgroundColor: PropTypes.string,
  lineThickness: PropTypes.number,
  tintColor: PropTypes.string,
  shape: PropTypes.array || PropTypes.string,
  selection: PropTypes.number,
  disable: PropTypes.bool,
  size: PropTypes.number,
  props: PropTypes.object,
  onChange: PropTypes.func
}

RNIconic.defaultProps = {
  selection: 0,
  disabled: false,
  size: 100
};

const IconicButton = requireNativeComponent("RNIconic", RNIconic, {
  nativeOnly: { onChange: true }
});

export default RNIconic;
