import 'package:http/http.dart' as http;
import 'dart:async';

class API {
    static Future<http.Response> getProducts() async {
        var result = 
            await http.get("https://6000366fcb21e10017af89d1.mockapi.io/products");
        
        if (result.statusCode == 200) {
            return result;
        }
        else {
            return null;
        }
        
    }
}