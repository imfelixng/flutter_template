import 'package:flutter/material.dart';
import 'package:presentation/base/translation/translation_ext.dart';
import 'package:presentation/intl/translations/translation_keys.dart';

class DynamicThemeSwitchContent extends StatelessWidget {
  final bool isDynamic;
  final void Function(bool) onIsDynamicToggled;

  const DynamicThemeSwitchContent({
    Key? key,
    required this.isDynamic,
    required this.onIsDynamicToggled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(LocaleKeys.dynamicTheme.tr),
        Switch(
          value: isDynamic,
          onChanged: onIsDynamicToggled,
        )
      ],
    );
  }
}