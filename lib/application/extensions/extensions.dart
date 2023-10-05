import 'package:flutter/material.dart';

extension BoxSize on num {
  SizedBox get pw => SizedBox(width: toDouble(),);
  SizedBox get ph => SizedBox(height: toDouble(),);
}