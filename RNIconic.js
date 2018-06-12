import React, { Component } from "react";
import { StyleSheet, ViewPropTypes, Platform } from "react-native";
import PropTypes from "prop-types";

import { requireNativeComponent } from "react-native";

class RNIconic extends Component {
  static Shapes = {
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

  static propTypes = {
    ...ViewPropTypes,

    size: PropTypes.number,
    rounded: PropTypes.bool,
    tintColor: PropTypes.string,
    lineThickness: PropTypes.number,
    color: PropTypes.string,
    shape: PropTypes.array || PropTypes.string,
    disable: PropTypes.bool,
    selection: PropTypes.number,
    onChange: PropTypes.func
  };

  static defaultProps = {
    size: 100,
    selection: 0,
    disabled: false,
    backgroundColor: "#FFFFFF"
  };

  _onChange = event => {
    this.props.onChange && this.props.onChange(event.nativeEvent.value);
  };

  render() {
    return (
      <IconicButton
        ref={ref => {
          this._iconicButton = ref;
        }}
        style={{ width: this.props.size, height: this.props.size }}
        tintColor={this.props.tintColor}
        size={this.props.size}
        disable={this.props.disabled}
        shape={this.props.shape}
        color={this.props.color}
        selection={this.props.selection}
        onChange={this._onChange}
      />
    );
  }
}

const IconicButton = requireNativeComponent("RNIconic", RNIconic, {
  nativeOnly: { onChange: true }
});

export default RNIconic;
