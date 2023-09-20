import 'dart:math';

var leftImageNumber = 1;
var rightImageNumber = 1;

void generateRandomNumber(var direction) {
  if (direction == 1) {
    leftImageNumber = Random().nextInt(6) + 1;
  } else {
    rightImageNumber = Random().nextInt(6) + 1;
  }
}
