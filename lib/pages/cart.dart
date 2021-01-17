import 'package:flutter/material.dart';
import 'package:online_shop/pages/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:online_shop/pages/product.dart';
import 'package:online_shop/models/productModel.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<ProductModel> _products = List<ProductModel>();

  @override
  void initState() {
    _products = DataDumper.getCart();
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Корзина"),
        ),
        body: 
        _products.length != 0 ?
            Column(
            children: [
                Flexible(
                    child: ListView.builder(
                        itemCount: _products.length,
                        itemBuilder: (BuildContext context, int index) {
                            return Card(
                                child: ListTile(
                                    leading: Container(
                                        width: 36,
                                        height: 36,                            
                                        child: Image.network(
                                            _products.elementAt(index).imgUrl,
                                            fit: BoxFit.cover,
                                        ),
                                    ),
                                    title: Text(_products.elementAt(index).title),
                                    subtitle: Text(_products.elementAt(index).subtitle),
                                    trailing: IconButton(
                                        icon: Icon(Icons.remove_shopping_cart),
                                        tooltip: 'Удалить товар из корзины',
                                        onPressed: () {
                                            setState(() {
                                                DataDumper.removeCart(_products.elementAt(index));
                                            });                                
                                        },
                                    ),
                                    onTap: () {
                                        Navigator.push(
                                            context, 
                                            CupertinoPageRoute(builder: (_) => 
                                            Product(model: _products.elementAt(index))));
                                    },
                                ),
                                
                            );
                        },
                    ),
                ),
                RaisedButton(
                    onPressed: () {}, 
                    padding: const EdgeInsets.all(0.0),
                    color: Colors.green,
                    child: Container(              
                        padding: const EdgeInsets.all(10.0),
                        child:
                            Text(
                                "Оформить заказ на сумму: " + DataDumper.getCartPrice().toString() + " ₽", 
                                style: TextStyle(fontSize: 20),
                            ),
                    ),
                ),
                
            ],                
            )            
            : Center(
                child: Text("Корзина пуста"),
            ),
                               
            
        );
  }
}