import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavProvider = StateProvider<int>((ref) {
  return 0;
});

final bottomNavControllerProvider =
    StateProvider.autoDispose<PageController>((ref) {
  return PageController();
});
