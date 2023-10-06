import 'package:flutter/material.dart';
import 'package:homepage1/login/Landing%20page/OpenOrder/Oder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Order(),
          ));
        },
        child: Wrap(
          spacing: 10,
          children: [
            Padding(padding: EdgeInsets.only(top: 10.0)),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15),
                  hintText: "search",
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(),
                  )),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Container(
              width: 100,
              height: 100,
              child: Image(image: AssetImage('images/kfc.png')),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                  255,
                  251,
                  6,
                  6,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image(image: AssetImage('images/wowchina.png')),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                  255,
                  251,
                  6,
                  6,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image(image: AssetImage('images/domi.png')),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                  255,
                  251,
                  6,
                  6,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image(image: AssetImage('images/kevi.png')),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                  255,
                  251,
                  6,
                  6,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image(image: AssetImage('images/pepsi.png')),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                  255,
                  251,
                  6,
                  6,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image(image: AssetImage('images/cocacola.png')),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                  255,
                  251,
                  6,
                  6,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image(image: AssetImage('images/burger.png')),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                  255,
                  251,
                  6,
                  6,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image(image: AssetImage('images/baskin.png')),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                  255,
                  251,
                  6,
                  6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
