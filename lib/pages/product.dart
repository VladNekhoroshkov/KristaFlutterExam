import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/pages/data.dart';

class Product extends StatefulWidget {
  final ProductModel model;

  Product({Key key, this.model}) : super(key: key);

  @override
  _ProductState createState() => _ProductState(model);
}

class _ProductState extends State<Product> {
  final ProductModel model;

  _ProductState(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(model.title)
        ),
        body:         
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                        model.imgUrl,
                        fit: BoxFit.cover,)
                    ),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                                model.title, 
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), 
                            ),
                            Text(
                                model.price.toString() + " ₽", 
                                style: TextStyle(fontSize: 20), 
                            ),
                            Text(model.subtitle),
                        ],
                    ),                    
                ),
                Padding(
                    padding: EdgeInsets.all(16),
                    
                    child: Column(
                        //width: double.infinity,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:
                            <Widget>[                                
                                RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(44.0),
                                        side: BorderSide(color: Colors.green)),                                
                                    color: Colors.green,
                                    textColor: Colors.white,
                                    child: Container(
                                        padding: EdgeInsets.all(11),
                                        child: Text(
                                            "Купить".toUpperCase(),
                                            style: TextStyle(fontSize: 22)
                                        ),
                                    ),
                                    onPressed: () {
                                        setState(() {
                                            DataDumper.addCart(model);
                                        });
                                    },
                                )
                            ],
                                

                    ),

                ), 
               
            ],
        ),

                

        //floatingActionButton: FloatingActionButton.extended(
        //    label: Text("Купить"), 
        //    backgroundColor: Colors.green,
        //    onPressed: () {
        //        setState(() {
        //            DataDumper.addCart(model);
        //        });
        //    },
        //),

          
    );
  }
}