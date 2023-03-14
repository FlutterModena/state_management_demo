import 'package:flutter/material.dart';
import 'package:state_management_demo/bloc/value_bloc.dart';
import 'package:state_management_demo/widgets/current_value_widget.dart';
import 'package:state_management_demo/widgets/left_info_widget.dart';

// TODO:
//
// 1. analizzare cosa viene ricostruito.
// 2. portare il valore dello slider in ValueWidget.
// 3. provare ad utilizzare i const constructor per i widget.
// 4. utilizzare un InheritedWidget per passare il valore dello slider.

void main() {
  runApp(const StateAppDemo());
}

class StateAppDemo extends StatelessWidget {
  const StateAppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const StateHomePage(
        title: 'State Demo',
      ),
    );
  }
}

class StateHomePage extends StatefulWidget {
  const StateHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<StateHomePage> createState() => _StateHomePageState();
}

class _StateHomePageState extends State<StateHomePage> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Slider(
                value: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            ),
            ValueBloc(
              value: _value,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      LeftInfoWidget(),
                      SizedBox(width: 8),
                      CurrentValueWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
