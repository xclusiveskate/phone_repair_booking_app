import 'package:flutter/material.dart';

extension Sizes on num {
  get height => SizedBox(
        height: toDouble(),
      );
  get width => SizedBox(
        width: toDouble(),
      );
}
