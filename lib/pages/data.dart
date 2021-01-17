import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/pages/API.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'dart:async';

class DataDumper{
    static List<ProductModel> _inCart = List<ProductModel>(); 

    static List<ProductModel> getProducts(){
        List<ProductModel> models = List<ProductModel>();

        models.add(ProductModel(
            "test 1", 
            "subtest 1", 
            10, 
            "https://bumper-stickers.ru/47340-thickbox_default/ulybaushhiysja-smayl.jpg"));
        models.add(ProductModel(
            "test 2", 
            "subtest 2", 
            20, 
            "https://bumper-stickers.ru/47340-thickbox_default/ulybaushhiysja-smayl.jpg"));
        models.add(ProductModel(
            "test 3", 
            "subtest 3", 
            30, 
            "https://bumper-stickers.ru/47340-thickbox_default/ulybaushhiysja-smayl.jpg"));
        
        return models;
    }

    static getProductsOnline() async {
        var data = await API.getProducts();

        if (data != null ) {
            List<dynamic> jsonData = jsonDecode(utf8.decode(data.bodyBytes));
            List<ProductModel> models = List<ProductModel>(); 
            jsonData.forEach((element) {
                models.add(ProductModel.fromJson(element));
            });
            return models;
        }
        else {
            return getProducts();
        }
    }

    static List<ProductModel> getCart() {
        return _inCart;
    }

    static addCart (ProductModel model) {
        _inCart.add(model);
    }

    static removeCart (ProductModel model) {
        _inCart.remove(model);
    } 

    static getCartPrice () {
        var cost = 0.0;
        _inCart.forEach((element) {
            cost += element.price;
        });
        return cost;
    }
}