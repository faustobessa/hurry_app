import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'animation_store.g.dart';

class AnimationStore = _AnimationStoreBase with _$AnimationStore;

abstract class _AnimationStoreBase with Store {
  @observable
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  @observable
  bool firstBuild = true;
  @observable
  bool accept = true;

  @action
  Future<void> openCard() async {
    await Future.delayed(Duration(milliseconds: 2000));
    crossFadeState = CrossFadeState.showSecond;
    firstBuild = false;
  }

  @action
  Future<void> closeCard() async {
    crossFadeState = CrossFadeState.showFirst;

    await Future.delayed(Duration(milliseconds: 4000));
    if (accept == true) {
      Modular.to.pushReplacementNamed('/home');
    } else {
      crossFadeState = CrossFadeState.showSecond;
    }
  }
}
