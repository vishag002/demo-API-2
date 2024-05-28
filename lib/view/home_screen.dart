import 'dart:convert';

import 'package:api_modelclass_demo/model/my_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //
  Map<String, dynamic> decodedData = {};
  MyClass _myClass = MyClass();
  //
  fetchdata() async {
    final url = Uri.parse(
      //"https://api.coindesk.com/v1/bpi/currentprice.json"
      "https://datausa.io/api/data?drilldowns=Nation&measures=Population",
    );
    final response = await http.get(url);
    if (response.statusCode == 200) {
      decodedData = jsonDecode(response.body);
      _myClass = MyClass.fromJson(decodedData); //pass json to decoded

      setState(() {});
    } else {
      print("Invalid APi");
    }
  }

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API demo"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _myClass.data?.length ?? 0,
        itemBuilder: (context, index) => ListTile(
          title: Text(_myClass.data![index].slugNation.toString()),
          subtitle: Text(_myClass.data![index].year.toString()),
        ),
      ),
    );
  }
}
