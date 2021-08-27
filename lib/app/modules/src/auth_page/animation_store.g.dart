// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnimationStore on _AnimationStoreBase, Store {
  final _$crossFadeStateAtom = Atom(name: '_AnimationStoreBase.crossFadeState');

  @override
  CrossFadeState get crossFadeState {
    _$crossFadeStateAtom.reportRead();
    return super.crossFadeState;
  }

  @override
  set crossFadeState(CrossFadeState value) {
    _$crossFadeStateAtom.reportWrite(value, super.crossFadeState, () {
      super.crossFadeState = value;
    });
  }

  final _$firstBuildAtom = Atom(name: '_AnimationStoreBase.firstBuild');

  @override
  bool get firstBuild {
    _$firstBuildAtom.reportRead();
    return super.firstBuild;
  }

  @override
  set firstBuild(bool value) {
    _$firstBuildAtom.reportWrite(value, super.firstBuild, () {
      super.firstBuild = value;
    });
  }

  final _$acceptAtom = Atom(name: '_AnimationStoreBase.accept');

  @override
  bool get accept {
    _$acceptAtom.reportRead();
    return super.accept;
  }

  @override
  set accept(bool value) {
    _$acceptAtom.reportWrite(value, super.accept, () {
      super.accept = value;
    });
  }

  final _$openCardAsyncAction = AsyncAction('_AnimationStoreBase.openCard');

  @override
  Future<void> openCard() {
    return _$openCardAsyncAction.run(() => super.openCard());
  }

  final _$closeCardAsyncAction = AsyncAction('_AnimationStoreBase.closeCard');

  @override
  Future<void> closeCard() {
    return _$closeCardAsyncAction.run(() => super.closeCard());
  }

  @override
  String toString() {
    return '''
crossFadeState: ${crossFadeState},
firstBuild: ${firstBuild},
accept: ${accept}
    ''';
  }
}
