/* jshint node: true, -W030 */
/* globals Phoenix, Window, Modal, Screen, _ */
'use strict';

var keys = [];
var cmd = ['cmd'];
var cmdAlt = ['cmd', 'alt'];

function alert(message) {
  var modal = new Modal();
  modal.message = message;
  modal.duration = 2;
  modal.show();
}

function fullscreen() {
    var frame = Screen.mainScreen().visibleFrameInRectangle();
    var width = Math.round(frame.width);
    var height = Math.round(frame.height);

    var rect = {x: frame.x, y: frame.y, width: width, height: height};
    Window.focusedWindow().setFrame(rect);
}

function left() {
    var frame = Screen.mainScreen().visibleFrameInRectangle();
    var width = Math.round(frame.width);
    var height = Math.round(frame.height);

    var rect = {x: frame.x, y: frame.y, width: width/2, height: height};
    Window.focusedWindow().setFrame(rect);
}

function right() {
    var frame = Screen.mainScreen().visibleFrameInRectangle();
    var width = Math.round(frame.width);
    var height = Math.round(frame.height);

    var rect = {x: (frame.x + width / 2), y: frame.y, width: width/2, height: height};
    Window.focusedWindow().setFrame(rect);
}


keys.push(Phoenix.bind('1', cmd, function() {
    fullscreen();
}));
keys.push(Phoenix.bind('2', cmd, function() {
    left();
}));
keys.push(Phoenix.bind('3', cmd, function() {
    right();
}));
