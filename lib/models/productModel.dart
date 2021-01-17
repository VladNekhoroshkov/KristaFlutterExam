class ProductModel{
  final String title;
  final String subtitle;
  final double price;
  final String imgUrl;

  ProductModel(this.title, this.subtitle, this.price, this.imgUrl);

  static ProductModel fromJson(jsonData) {
    return ProductModel(
        jsonData['title'], 
        jsonData['subtitle'], 
        double.parse(jsonData['price']), 
        jsonData['imgUrl']);
  }

}
