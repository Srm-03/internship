import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepage1/login/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal info"),
        backgroundColor: Colors.red,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'images/dp.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              itemProfile(
                  'Name', 'soumya ranjan msihra', CupertinoIcons.person),
              SizedBox(
                height: 10,
              ),
              itemProfile('phone', '123456789', CupertinoIcons.phone),
              SizedBox(
                height: 10,
              ),
              itemProfile(
                  'Email', 'soumyaranjan@gmail,com', CupertinoIcons.mail),
              SizedBox(
                height: 10,
              ),
              itemProfile(
                  'Address', 'Patrapada,Bhubaneswar', CupertinoIcons.location),
                  Padding(
                    padding:EdgeInsets.all(8.0),
                    child:
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.red),
                    child: Text(
                      'Edit',
                    ),
                  )),
                  ),
                  Padding(
                    padding:EdgeInsets.all(8.0),
                    child:
              SizedBox(
                  width: double.infinity,
                  
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.red),
                    child: Text(
                      'Signout',
                    ),
                  )),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: Colors.red.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10)
        ]),
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Icon(iconData),
          trailing: Icon(
            Icons.arrow_forward,
          ),
        ));
  }
}
