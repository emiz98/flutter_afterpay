class Shop {
  final int id;
  final String name;
  final String logo;
  final String bg;

  Shop(
      {required this.id,
      required this.name,
      required this.logo,
      required this.bg});

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      id: json['id'] as int,
      name: json['attributes']['name'] as String,
      logo: json['logo_url'] as String,
      bg: json['main_image_url'] as String,
    );
  }
}

List<String> categories = [
  'Women',
  'Clothing',
  'Shoes',
  'Handbags',
  'Jewellery & Accessories',
  'Men',
  'Clothing',
  'Shoes'
];
