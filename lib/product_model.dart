class ProductModel {
  int? id;
  String? name;
  String? price;
  String? image;
  String? category;
  String? description;
  String? publisher;
  String? date;
  bool? isFavorite;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.image,
    this.category,
    this.description,
    this.publisher,
    this.date,
    this.isFavorite,
  });
}

List<ProductModel> productList = [
  ProductModel(
    id: 1,
    category: 'Electronics',
    description: 'Aser Nitro 5 ',
    name: 'laptop',
    publisher: 'ibarhim mamdoh',
    date: '13/4',
    price: '1000\$',
    image:
        'https://th.bing.com/th/id/OIP.BiD5NpwZ0PqxOLOx4qsTYQHaFP?pid=ImgDet&rs=1',
    isFavorite: false,
  ),
  ProductModel(
    id: 2,
    category: 'clothes',
    description: 'Tshirt',
    publisher: 'ahmed ayman',
    date: '22/1',
    name: 'Tshirt',
    price: '15\$',
    image:
        'https://th.bing.com/th/id/R.452554fdc951cb3f1c5a05d61e81c421?rik=xyG%2bnGZfCHlJUw&pid=ImgRaw&r=0',
    isFavorite: false,
  ),
  ProductModel(
    id: 3,
    category: 'Furniture',
    description: '',
    publisher: 'ali nasr',
    date: '30/12',
    name: 'ArmChair',
    price: '150\$',
    image:
        'https://th.bing.com/th/id/OIP.hwN1YM6gtGPplYTDz3481gEgEs?w=178&h=184&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    isFavorite: false,
  ),
  ProductModel(
    id: 4,
    category: 'food',
    description: '',
    publisher: 'KFC',
    date: '1/1',
    name: 'burger',
    price: '30\$',
    image:
        'https://www.bing.com/th?id=OIP.FyD3Zxg9qZfj6msCZtOalQHaFj&w=106&h=99&c=8&rs=1&qlt=90&o=6&dpr=1.25&pid=3.1&rm=2',
    isFavorite: false,
  ),
  ProductModel(
    id: 5,
    category: 'Beaty',
    description: 'Aser Nitro 5 ',
    name: 'makeup',
    date: '3/11',
    publisher: 'SHEdo',
    price: '500\$',
    isFavorite: false,
    image:
    'https://th.bing.com/th/id/OIP.i6j5N0zc7Z2yKIP_9grCeQHaEK?w=329&h=185&c=7&r=0&o=5&dpr=1.25&pid=1.7',
  ),
  ProductModel(
    id: 6,
    category: 'clothes',
    description: 'Aser Nitro 5 ',
    name: 'Jacket',
    publisher: 'zara',
    price: '200\$',
    image:
        'https://th.bing.com/th/id/OIP.1vXgraEZL1vM9lBqseSS8AHaI9?w=162&h=195&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    isFavorite: false,
  ),
  ProductModel(
    id: 7,
    category: 'furniture',
    description: 'Aser Nitro 5 ',
    name: 'ArmChair',
    publisher: 'housewear',
    price: '1000\$',
    image:
        'https://th.bing.com/th/id/OIP.QQpVKgBKB7GM8WsKY0Oa1wHaH6?w=138&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    isFavorite: false,
  ),
  ProductModel(
    id: 8,
    category: 'Electronics',
    description: 'Aser Nitro 5 ',
    name: 'PC',
    publisher: ' Sigma',
    price: '1000\$',
    image:
'https://th.bing.com/th/id/OIP.DL7OZIlwpBcRb7Zs2s_ULAHaF0?w=230&h=181&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    isFavorite: false,
  ),
  ProductModel(
    id: 1,
    category: 'Electronics',
    description: 'Aser Nitro 5 ',
    name: 'laptop',
    publisher: 'ibarhim mamdoh',
    price: '1000\$',
    image:
        'https://th.bing.com/th/id/OIP.BiD5NpwZ0PqxOLOx4qsTYQHaFP?pid=ImgDet&rs=1',
    isFavorite: false,
  ),
];
