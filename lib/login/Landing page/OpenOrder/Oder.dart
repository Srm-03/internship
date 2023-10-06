import 'package:flutter/material.dart';
import 'package:homepage1/login/Landing%20page/App.dart';

class ContainerItem {
  String text;
  bool isEditing;
  ContainerItem({required this.text, this.isEditing = false});
}

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List<ContainerItem> containerList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Landing())),
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text('Your resturant'),
        backgroundColor: Color.fromARGB(255, 251, 6, 6),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: containerList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  color: Color.fromARGB(255, 251, 6, 6),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: containerList[index].isEditing
                            ? TextFormField(
                                initialValue: containerList[index].text,
                                onChanged: (newText) {
                                  setState(() {
                                    containerList[index].text = newText;
                                  });
                                },
                              )
                            : Text(
                                containerList[index].text,
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          setState(() {
                            containerList[index].isEditing =
                                !containerList[index].isEditing;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _showDeleteConfirmationDialog(index);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _addContainer();
            },
          ),
        ],
      ),
    );
  }

  _addContainer() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newText = '';
        return AlertDialog(
          title: Text('ENTER WHAT YOU WANT'),
          content: TextField(
            onChanged: (text) {
              newText = text;
            },
            decoration: InputDecoration(
              hintText: 'Enter your Dish Name',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Add'),
              onPressed: () {
                setState(() {
                  if (newText.isNotEmpty) {
                    containerList.add(ContainerItem(text: newText));
                  }
                  Navigator.of(context).pop();
                });
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _showDeleteConfirmationDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure?'),
          content: Text('Are you sure you want to delete this oder ?'),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                setState(() {
                  containerList.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
