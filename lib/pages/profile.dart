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
            padding: const EdgeInsets.all(10),
            child: Column(                
                children: [
                    ListTile(
                        leading: 
                            CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://img.favpng.com/8/21/18/computer-software-management-business-service-technical-support-png-favpng-GiV2VnJipVEsTBGxTEw8BBRaC.jpg'),
                            ),
                        title: 
                            Text(
                                "First name Second name", 
                                style: TextStyle(fontSize: 18, )),
                        subtitle: 
                            Text(
                                "test@mail.com", 
                                style: TextStyle(fontSize: 14, )),
                    ),                   
                ],
            ),
                
        ),
        
    );
  }
}
