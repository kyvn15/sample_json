import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_json/sample.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Sample? result;

  Future<void> _loadJsonSample() async {
    final String jsonString = await rootBundle.loadString('assets/sample.json');
    final jsonData = jsonDecode(jsonString);
    final sample = Sample.fromJson(jsonData);

    setState(() {
      result = sample;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fundamental Parsing Json',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fundamental Parsing Json'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _loadJsonSample,
                child: const Text("Read Json Data"),
              ),
              const SizedBox(height: 12.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${result}',
                  style: const TextStyle(fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}
