import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double spacing;
  const Gap(this.spacing, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final parentWidget = context.findAncestorWidgetOfExactType<Row>() ??
            context.findAncestorWidgetOfExactType<Column>();
        final isRow = parentWidget is Row;
        return SizedBox(
          width: isRow ? spacing : null,
          height: isRow ? null : spacing,
        );
      },
    );
  }
}
