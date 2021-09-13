import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ReconcilScreen extends StatelessWidget {
  // Color col = Color(1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.grey, title: Text('ReconcilScreen')),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: 5,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          itemBuilder: (context, index) {
            return layout();
          },
          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        ));
  }

  layout() {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(60),
      )),
      color: Colors.blue.shade200,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.maxFinite,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    "https://www.brookings.edu/wp-content/uploads/2020/06/global_belgium_medicine_blister_packs.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            table(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    "9/9/2021",
                    maxLines: 2,
                    style: TextStyle(
                        fontFamily: 'avenir', fontWeight: FontWeight.w800),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            //if (product.rating != null)
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: endButtons("Slip", Colors.green),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: endButtons("Delete", Colors.red),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  endButtons("Update", Colors.blue),
                ],
              ),
            ),

            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  table() {
    return Table(
        border: TableBorder
            .all(), // Allows to add a border decoration around your table
        children: [
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'Medicine',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Doctor'),
            ),
          ]),
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child:
                  Text('Doctor', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('A. Smith'),
            ),
          ]),
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Refil Left',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('2'),
            ),
          ]),
        ]);
  }

  endButtons(text, col) {
    return Container(
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${text}",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
