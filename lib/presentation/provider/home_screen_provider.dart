import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final summaryTabProvider = StateProvider.autoDispose<PageController>((ref) {
  return PageController();
});

final summaryTabIndexProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});
