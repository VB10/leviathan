import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:leviathan/src/utility/index.dart';

import 'package:leviathan/src/view/widget/index.dart';

class CircleCheckBoxGroup extends StatefulWidget {
  const CircleCheckBoxGroup({
    super.key,
    required this.items,
    required this.onSelected,
    this.axis,
  });

  final List<CircleBoxItem> items;
  final OnSelectedIndex onSelected;
  final Axis? axis;

  @override
  State<CircleCheckBoxGroup> createState() => _CircleCheckBoxGroupState();
}

class _CircleCheckBoxGroupState extends State<CircleCheckBoxGroup> {
  late List<CircleBoxItem> _boxItems;
  @override
  void initState() {
    super.initState();
    _boxItems = widget.items;
  }

  void _updateSelected(int selectedIndex) {
    setState(() {
      _boxItems = _boxItems
          .mapIndexed(
            (index, element) =>
                element.copyWith(isSelected: index == selectedIndex),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: widget.axis ?? Axis.horizontal,
      children: _boxItems
          .mapIndexed(
            (index, e) => CircleCheckBox(
              title: e.name,
              isSelected: e.isSelected,
              onPressed: () {
                _updateSelected(index);
              },
            ),
          )
          .toList(),
    );
  }
}

class CircleBoxItem {
  CircleBoxItem({
    required this.isSelected,
    required this.name,
    required this.id,
  });
  final bool isSelected;
  final String name;
  final int id;

  CircleBoxItem copyWith({
    bool? isSelected,
    String? name,
    int? id,
  }) {
    return CircleBoxItem(
      isSelected: isSelected ?? this.isSelected,
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }
}
