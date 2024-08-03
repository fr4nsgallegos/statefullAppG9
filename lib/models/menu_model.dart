class MenuModel {
  String name;
  String urlImage;
  String days;
  String price;

  //CONSTRUCTOR POR DEFECTO
  // MenuModel(this.days, this.name, this.price, this.urlImage);

  //CONSTRUCTOR DECLARATIVO (PARAMETROS OPCIONALES REQUERIDOS)
  MenuModel({
    required this.name,
    required this.days,
    required this.price,
    required this.urlImage,
  });
}

// INSTANCIA LLAMANDO CONSTRUCTOR POR DEFECTO
// MenuModel menu1 = MenuModel("ma - mie", "Menu 1", "5", "url");

// INSTANCIA LLAMANDO CONSTRUCTOR DECLARATIVO
MenuModel menu2 = MenuModel(
  urlImage: "image",
  name: "Menu2",
  days: "lunes",
  price: "10",
);
