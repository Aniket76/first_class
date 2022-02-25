import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'My First App Update';

  String bodyText = 'Body Text One';

  @override
  Widget build(BuildContext context) {

    print('First Value' + bodyText);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Icon(
            Icons.add_circle
          ),
        ),
        body: Column(
          children: [
            Text(bodyText),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  bodyText = '6';
                  print(bodyText);
                },
                child: const Text('Button')
            )
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Hello from My Text');
  }
}




