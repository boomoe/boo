var s = Snap("#moe");
var eye_left  = s.ellipse(160, 118, 170, 90);
eye_left.attr({
  ry: 30.5,
  rx: 36
});
var eye_right = s.ellipse(290, 118, 170, 90);
eye_right.attr({
  ry: 30.5,
  rx: 36
});
var eyes = s.group(eye_left, eye_right);
eyes.attr({
  ry: 30.5,
  rx: 36,
  fill: '#000'
});

function blink(){
  eye_left.animate({ry:1}, 40, function(){
    eye_left.animate({ry: 20}, 300);
  });

  eye_right.animate({ry:1}, 40, function(){
    eye_right.animate({ry: 20}, 300);
  });
};

setInterval(blink, 4000);
