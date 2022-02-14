import 'package:flutter/material.dart';

class NoResultsDisplay extends StatelessWidget {
  final String message;

  const NoResultsDisplay({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.error_outline,
            size: 64,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
