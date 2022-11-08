// ignore_for_file: strict_raw_type, avoid_dynamic_calls

import 'package:flutter/material.dart';

class Utility {
  /// 背景取得
  Widget getBackGround() {
    return Image.asset(
      'assets/image/bg.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
  }
}
