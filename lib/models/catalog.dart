class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: "test1",
        name: "Himanshu1",
        desc: "Just Test 1",
        price: 555,
        color: "#33505a",
        image:
            "https://images.pexels.com/photos/699122/pexels-photo-699122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
  ];
}
