import 'package:flutter/material.dart';
import 'package:statefullappg9/models/menu_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedMenuIndex;

  Widget menuContainer(MenuModel menuModel, int index) {
    menuModel.isSelected = selectedMenuIndex == index;
    return GestureDetector(
      onTap: () {
        selectedMenuIndex = menuModel.isSelected == true ? null : index;
        setState(() {});
        // print(menuModel.isSelected);
        // menuModel.isSelected = !menuModel.isSelected;
        // print(menuModel.isSelected);
        // setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(8),
        width: double.infinity,
        height: 130,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: menuModel.isSelected ? Color(0xffFFD964) : Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
            color: menuModel.isSelected ? Colors.white : Colors.black,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            //PRIMERA FORMA DE COLOCAR UNA IMAGEN REDONDEADA DE INTERNET
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                    menuModel.urlImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //SEGUNDA  FORMA DE COLOCAR UNA IMAGEN REDONDEADA DE INTERNET
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(25),
            //   child: Image.network(
            //     "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            //   ),
            // ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  menuModel.name,
                  style: TextStyle(
                    fontSize: 25,
                    color: menuModel.isSelected ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  menuModel.days,
                  style: TextStyle(
                    fontSize: 22,
                    color: menuModel.isSelected ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  "S/. ${menuModel.price}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: menuModel.isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text(
            "setState Cards Assets App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Selecciona tu mejor opción",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: List.generate(
                  listMenu.length,
                  (index) {
                    return menuContainer(listMenu[index], index);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
