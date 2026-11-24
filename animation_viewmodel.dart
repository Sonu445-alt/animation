
import 'package:flutter/material.dart';
import '../model/animation_model.dart';
class AnimationViewModel extends ChangeNotifier {

  AnimationModel _animation = AnimationModel(
    size: 150,
    isAnimated: false,
  );

  AnimationModel get animation => _animation;

  void startAnimation() {

    _animation = AnimationModel(
      size: _animation.isAnimated ? 150 : 250,
      isAnimated: !_animation.isAnimated,
    );

    notifyListeners();
  }
}
