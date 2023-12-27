import 'package:flutter/material.dart';
import 'package:iq_test/common/theme/color_constants.dart';

class UnderlineInputBorderResolver {
  final Map<MaterialState, Color> _mapping;

  const UnderlineInputBorderResolver()
      : _mapping = const {
          MaterialState.disabled: ColorConstants.ColorBlack_10,
          MaterialState.hovered: ColorConstants.ColorWhite_F3,
          MaterialState.error: ColorConstants.ColorWhite_F3,
          MaterialState.focused: ColorConstants.ColorBlack_00,
        };

  InputBorder call(Set<MaterialState> states) {
    const border = UnderlineInputBorder(
      borderRadius: BorderRadius.zero,
      borderSide: BorderSide(width: 2.0, color: ColorConstants.ColorBlack_00),
    );

    for (final MapEntry(:key, :value) in _mapping.entries) {
      if (states.contains(key)) return border.copyWithBorderColor(value);
    }

    return border;
  }
}

extension _CopyWithBorderColor on UnderlineInputBorder {
  UnderlineInputBorder copyWithBorderColor(Color color) {
    return copyWith(
      borderSide: borderSide.copyWith(color: color),
    );
  }
}