import 'package:flutter/material.dart';
import 'package:statefullappg9/models/deport_model.dart';
import 'package:statefullappg9/widgets/item_deport_widget.dart';

class FavoriteDeportsPage extends StatefulWidget {
  @override
  State<FavoriteDeportsPage> createState() => _FavoriteDeportsPageState();
}

class _FavoriteDeportsPageState extends State<FavoriteDeportsPage> {
  // Widget itemDeportWidget(String deportName) {
  List<DeportModel> favoriteDeportList = [DeportModel("Exjemplko", true)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SetState Texts App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "¿Cuáles son tus deportes favoritos?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < deportModelList.length; i++)
                    ItemDeportWidget(
                      deporte: deportModelList[i],
                      onTap: () {
                        deportModelList[i].isFavorite = true;
                        favoriteDeportList.add(deportModelList[i]);
                        setState(() {});
                      },
                    )
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 40,
              thickness: 2,
            ),
            Text(
              "Mis deportes favoritos son:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 8,
                spacing: 8,
                children: [
                  for (int i = 0; i < favoriteDeportList.length; i++)
                    ItemDeportWidget(
                      deporte: favoriteDeportList[i],
                      onTap: () {},
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
