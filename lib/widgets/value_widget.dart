import 'package:flutter/material.dart';

class ValueWidget extends StatelessWidget {
  const ValueWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //debugPrint('ValueWidget build');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Valore attuale:',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'value',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
