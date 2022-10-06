import 'package:flutter/material.dart';
import 'package:flutter_practice_001/models/catalog.dart';
import 'package:flutter_practice_001/pages/widgets/drawer.dart';
import 'package:flutter_practice_001/pages/widgets/itemWidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) =>CatalogModel.items[0]);

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
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          }),
          itemCount: dummyList.length,
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
