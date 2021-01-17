import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
  
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Профиль"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://bumper-stickers.ru/47340-thickbox_default/ulybaushhiysja-smayl.jpg'),
                    ),
                    Text('\n'),
                    Table(
                    border: TableBorder.all(color: Colors.green),
                        children: [
                            TableRow(children: [
                            ListTile(                    
                                title: 
                                    Text(
                                        "Ваш ID",
                                        textAlign: TextAlign.center, 
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, 
                                            fontSize: 12,
                                            color: Colors.black                                                                            
                                        ),
                                    ),
                                subtitle: 
                                    Text(
                                        "27253149", 
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.green                                
                                        ),
                                    ),
                            ),
                            ListTile(                    
                                title: 
                                    Text(
                                        "Баллы",
                                        textAlign: TextAlign.center, 
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, 
                                            fontSize: 12,
                                            color: Colors.black                                
                                        ),                                
                                    ),
                                subtitle: 
                                    Text(
                                        "12", 
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.green                                
                                        ),
                                    ),
                            ),               
                            ]),
                        ],
                    ),

                    ListTile(                    
                        title: 
                            Text(
                                "Эл. почта", 
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, 
                                    fontSize: 16,
                                    color: Colors.black),                                
                            ),
                        subtitle: 
                            Text(
                                "ars_pro@bk.ru", 
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green),
                            ),
                        onTap: () {},
                    ),
                    const Divider(
                        color: Colors.green,
                        height: 15,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                    ),

                    ListTile(                    
                        title: 
                            Text(
                                "Ваше имя", 
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, 
                                    fontSize: 16,
                                    color: Colors.black),
                            ),
                        subtitle: 
                            Text(
                                "Владислав",
                                style: TextStyle(
                                    fontSize: 16, 
                                    color: Colors.green),
                            ),
                        onTap: () {},
                    ),
                    const Divider(
                        color: Colors.green,
                        height: 15,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                    ),

                    ListTile(                    
                        title: 
                            Text(
                                "Телефон для связи", 
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, 
                                    fontSize: 16,
                                    color: Colors.black),
                            ),
                        subtitle: 
                            Text(
                                "+7 (980) 749 75 72",
                                style: TextStyle(
                                    fontSize: 16, 
                                    color: Colors.green), 
                            ),
                        onTap: () {},
                    ),
                    const Divider(
                        color: Colors.green,
                        height: 15,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                    ),
                    ListTile(                    
                        title: 
                            Text(
                                "Дата рождения", 
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, 
                                    fontSize: 16,
                                    color: Colors.black),
                            ),
                        subtitle: 
                            Text(
                                "22.10.1998",
                                style: TextStyle(
                                    fontSize: 16, 
                                    color: Colors.green), 
                            ),
                        onTap: () {},
                    ),

                          
                ],
            ),
            
                
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: (){}, 
            label: Text("Выход"), 
            backgroundColor: Colors.green
        ),
        
    );
  }
}
