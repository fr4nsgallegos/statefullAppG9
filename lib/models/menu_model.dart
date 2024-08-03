class MenuModel {
  String name;
  String urlImage;
  String days;
  String price;
  bool isSelected;

  //CONSTRUCTOR POR DEFECTO
  // MenuModel(this.days, this.name, this.price, this.urlImage);

  //CONSTRUCTOR DECLARATIVO (PARAMETROS OPCIONALES REQUERIDOS)
  MenuModel({
    required this.name,
    required this.days,
    required this.price,
    required this.urlImage,
    required this.isSelected,
  });
}

//CREANDO LISTA DE MENUMODEL
List<MenuModel> listMenu = [
  MenuModel(
    name: "Menu1",
    days: "Mar-Jue",
    price: "12",
    urlImage:
        "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    isSelected: false,
  ),
  MenuModel(
    name: "Menu2",
    days: "Lun-Mie-Vie",
    price: "10",
    urlImage:
        "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    isSelected: false,
  ),
  MenuModel(
    name: "Menu3",
    days: "Jue",
    price: "5",
    urlImage:
        "https://images.pexels.com/photos/17025151/pexels-photo-17025151/free-photo-of-plato-cena-almuerzo-comida.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    isSelected: false,
  ),
  MenuModel(
    name: "Menu4",
    days: "Sab-Dom",
    price: "15",
    urlImage:
        "https://images.pexels.com/photos/1292984/pexels-photo-1292984.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    isSelected: false,
  ),
];

// INSTANCIA LLAMANDO CONSTRUCTOR POR DEFECTO
// MenuModel menu1 = MenuModel("ma - mie", "Menu 1", "5", "url");

// INSTANCIA LLAMANDO CONSTRUCTOR DECLARATIVO
// MenuModel menu2 = MenuModel(
//   urlImage: "image",
//   name: "Menu2",
//   days: "lunes",
//   price: "10",
// );
