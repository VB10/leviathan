import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomRefreshIndicator extends StatefulWidget {
  const CustomRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  State<CustomRefreshIndicator> createState() => _CustomRefreshIndicatorState();
}

class _CustomRefreshIndicatorState extends State<CustomRefreshIndicator> {
  bool _isRequestAlreadySent = false;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: context.colorScheme.secondary,
      onRefresh: () async {
        if (_isRequestAlreadySent) {
          return;
        }
        _updateRequest();
        await _onRefreshCallbackWithDelay();
        _updateRequest();
      },
      child: widget.child,
    );
  }

  Future<void> _onRefreshCallbackWithDelay() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      await widget.onRefresh();
    });
  }

  void _updateRequest() {
    if (mounted) {
      setState(() => _isRequestAlreadySent = !_isRequestAlreadySent);
    }
  }
}
