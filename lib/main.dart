import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Customization Demo"),
      ),
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        backgroundColor: Colors.green,
        onPressed: () {
          showMonthPicker(
            context: context,
            initialDate: DateTime.now(),
          ).then((date) {
            if (date != null) {
              setState(() {
                // selectedDate = date;
              });
            }
          });
        },
        // isExtended: true,
        child: const Icon(Icons.calendar_month),
      ),
    );
  }
}
