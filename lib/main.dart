import 'package:counter_riverpod_app/counter/page/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'My Flutter Home Page',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello, My name is Anawat Paothong.",
            ),
            const SizedBox(
              height: 8.0,
            ),
            ElevatedButton(
              child: const Text("Navigate to Counter Page"),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CounterPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
