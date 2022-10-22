import 'package:bitcoin_app/app/models/CountryData.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin_app/app/components/Header.dart';
import 'package:bitcoin_app/app/components/Menu.dart';
import 'package:bitcoin_app/app/components/Country.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ super.key });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<CountryData> countries = [
    CountryData(photo: 'AUD', value: 234),
    CountryData(photo: 'CHF', value: 829),
    CountryData(photo: 'CAD', value: 102),
    CountryData(photo: 'INR', value: 19),
    CountryData(photo: 'NZD', value: 547),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context),
      drawer: Menu(context),
      body: Container(
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            for(var country in countries) Country(country.photo, country.value)
          ],
        ),
      ),
    );
  }
}
