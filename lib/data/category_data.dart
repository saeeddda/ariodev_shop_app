class CategoryModel {
  String? title;
  String? image;

  CategoryModel({this.title, this.image});
}

List<CategoryModel> categories = [
  CategoryModel(title: 'New', image: 'assets/images/category/cat-4.png'),
  CategoryModel(title: 'Clothes', image: 'assets/images/category/cat-7.png'),
  CategoryModel(title: 'Shoes', image: 'assets/images/category/cat-2.png'),
  CategoryModel(title: 'Accesoreis', image: 'assets/images/category/cat-3.png'),
];

List<CategoryModel> simpleCategories = [
  CategoryModel(title: 'Tops'),
  CategoryModel(title: 'Shirts & Blouses'),
  CategoryModel(title: 'Cardigans & Sweaters'),
  CategoryModel(title: 'Kniwear'),
  CategoryModel(title: 'Blazers'),
  CategoryModel(title: 'Outerwear'),
  CategoryModel(title: 'Pants'),
  CategoryModel(title: 'Jeans'),
  CategoryModel(title: 'Shorts'),
  CategoryModel(title: 'Skirts'),
  CategoryModel(title: 'Dresses'),
];
