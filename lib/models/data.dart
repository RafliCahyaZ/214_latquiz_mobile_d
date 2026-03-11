class User {
  String username;
  String password;
  String nama;

  User({
    required this.username,
    required this.password,
    required this.nama,
  });
}

User user1 = User(
  username: "Rafli",
  password: "214",
  nama: "Rafli Cahya",
);

class Product {

  int id;
  String name;
  String category;
  String description;
  String price;
  String image;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.image,
  });
}

List<Product> products = [
  Product(
    id: 1,
    name: "Wireless Headphone",
    category: "Electronics",
    price: "750000",
    image: "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods-max-silver/1.webp",
    description: "Wireless headphone dengan kualitas suara jernih.",
  ),
];