import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_practice_001/models/catalog.dart';
import 'package:flutter_practice_001/pages/widgets/drawer.dart';
import 'package:flutter_practice_001/pages/widgets/itemWidgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    String catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .cast<Item>()
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "The Crypto",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child:  (CatalogModel.items!=null && CatalogModel.items.isNotEmpty) ?ListView.builder(
          itemBuilder: ((context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          }),
          itemCount: CatalogModel.items.length,
        ):const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
