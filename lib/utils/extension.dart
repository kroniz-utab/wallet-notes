import 'package:flutter/material.dart';

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());

  SizedBox get pw => SizedBox(width: toDouble());
}

extension ShowOrNull on Widget {
  Widget? showOrNull(bool isShow) => isShow ? this : null;
}

extension ShowOrBlank on Widget {
  Widget showOrBlank(bool isShow) => isShow ? this : Container();
}
