import 'package:flutter/material.dart';
import 'package:state_management_demo/widgets/value_widget.dart';

class CurrentValueWidget extends StatelessWidget {
  const CurrentValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //debugPrint('CurrentValueWidget build');
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ValueWidget(),
      ),
    );
  }
}
