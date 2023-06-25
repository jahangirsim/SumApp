import 'package:flutter/material.dart';
import 'package:sum_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sum App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI extends State<MyHomePage> {
  Map<String, double> formValue = {
    'Num1': 0,
    'Num2': 0,
    'Num3': 0,
  };

  double sum = 0;

  @override
  Widget build(BuildContext context) {
    myInputOnChange(inputKey, inputValue) {
      if(mounted) {
        setState(() {
          formValue.update(inputKey, (value) => double.parse(inputValue));
        });
      }
    }

    addAllNumbers() {

      if(mounted){
        setState(() {
          sum = formValue['Num1']! + formValue['Num2']! + formValue['Num3']!;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sum App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Sum = $sum', style: headTextStyle()),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                myInputOnChange('Num1', value);
              },
              decoration: appInputStyle('First Number'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                myInputOnChange('Num2', value);
              },
              decoration: appInputStyle('Second Number'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                myInputOnChange('Num3', value);
              },
              decoration: appInputStyle('Third Number'),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  addAllNumbers();
                },
                style: appButtonStyle(),
                child: const Text('Add'),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
