import 'dart:convert';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'package:project1/tableCard.dart';

import 'helper.dart';
import 'models/taples_model.dart';

class TaplesPage extends StatefulWidget {
  const TaplesPage({super.key, required this.token});
  final String token;

  @override
  State<TaplesPage> createState() => _TaplesPageState();
}

class _TaplesPageState extends State<TaplesPage> {
  initState() {
    super.initState();
    GetTaples(widget.token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Main Hall",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          elevation: 8,
          centerTitle: true,
        ),
        body: FutureBuilder<List<TableModel>>(
          future: GetTaples(widget.token),
          builder: (context, snapshot) => snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => Row(
                    children: [
                      TapeCard(taple_no: snapshot.data![index].name.toString()),
                      TapeCard(
                          taple_no: snapshot.data![index++].name.toString()),
                      TapeCard(
                          taple_no: snapshot.data![index++].name.toString()),
                    ],
                  ),
                )
              : CircularProgressIndicator(),
        ));
  }
}
