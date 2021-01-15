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
        "https://i.pinimg.com/736x/9f/f8/4c/9ff84cbbbf4950d61fb1fedd2e826ff9--good-morning-vase.jpg");
  }

}
