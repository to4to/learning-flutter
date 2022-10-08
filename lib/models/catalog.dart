class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

   Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

factory Item.fromMap(Map<String,dynamic>map){

  return Item(
  id:map["id"],
   name:map["name"],
   desc:map["desc"],
   price:map["price"],
   color:map["color"],
   image:map["image"]
);
}



toMap()=>{

       "id":id,
       "name":name,
       "desc":desc,
       "price":price,
       "color":color,
       "image":image

};



}




class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "Himanshu1",
        desc: "Just Test 1",
        price: 555,
        color: "#33505a",
        image:
            "https://images.pexels.com/photos/699122/pexels-photo-699122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
  ];
}
