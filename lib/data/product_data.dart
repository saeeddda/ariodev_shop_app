class ProductModel {
  String? title;
  String? image;
  String? category;
  String? description;
  double? rate;
  double? price;
  double? discountPrice;
  int? discountPercent;

  ProductModel({
    this.title,
    this.image,
    this.category,
    this.description,
    this.rate,
    this.price,
    this.discountPrice,
    this.discountPercent,
  });
}

List<ProductModel> normalProductList = [
  ProductModel(
    title: 'Evening Dress',
    image: 'assets/images/products/product-1.png',
    category: 'Dorothy Perkins',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 5.0,
    price: 15.0,
  ),
  ProductModel(
    title: 'H&M',
    image: 'assets/images/products/product-2.png',
    category: 'Short black dress',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 4.5,
    price: 12.99,
  ),
  ProductModel(
    title: 'T-Shirt Sailing',
    image: 'assets/images/products/product-3.png',
    category: 'Mango Boy',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 0.0,
    price: 10,
  ),
  ProductModel(
    title: 'Jeans',
    image: 'assets/images/products/product-4.png',
    category: 'Cool',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 0.0,
    price: 45,
  ),
  ProductModel(
    title: 'Sport Dress',
    image: 'assets/images/products/product-6.png',
    category: 'Dorothy Perkins',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 4.5,
    price: 14,
  ),
];

List<ProductModel> discountedProductList = [
  ProductModel(
    title: 'Evening Dress',
    image: 'assets/images/products/product-6.png',
    category: 'Dorothy Perkins',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 5.0,
    price: 15.0,
    discountPrice: 12.0,
    discountPercent: 20,
  ),
  ProductModel(
    title: 'H&M',
    image: 'assets/images/products/product-7.png',
    category: 'Short black dress',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 4.5,
    price: 12.99,
    discountPrice: 10.0,
    discountPercent: 25,
  ),
  ProductModel(
    title: 'T-Shirt Sailing',
    image: 'assets/images/products/product-8.png',
    category: 'Mango Boy',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 0.0,
    price: 30.0,
    discountPrice: 18.0,
    discountPercent: 40,
  ),
  ProductModel(
    title: 'Jeans',
    image: 'assets/images/products/product-9.png',
    category: 'Cool',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 0.0,
    price: 45.0,
    discountPrice: 35.0,
    discountPercent: 10,
  ),
  ProductModel(
    title: 'Sport Dress',
    image: 'assets/images/products/product-10.png',
    category: 'Dorothy Perkins',
    description:
        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
    rate: 4.5,
    price: 14.0,
    discountPrice: 12.0,
    discountPercent: 20,
  ),
];
