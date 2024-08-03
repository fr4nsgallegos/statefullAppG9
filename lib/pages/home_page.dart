import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget menuContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: 130,
      // color: Colors.red,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          color: Colors.black,
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
                  "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
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
                "Menú 1",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "Lun - Mier - Vier",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "S/. 5",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
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
              menuContainer(),
              menuContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
