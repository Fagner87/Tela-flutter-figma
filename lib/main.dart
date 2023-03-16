import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Cost',
      theme: ThemeData(),
      home: MyHomePage(title: 'Car Cost'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required this.title});

  get border => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252525),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Car Cost',
              style: TextStyle(
                color: Color(0xff237cc6),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff1ef202), width: 1.0),
                  borderRadius: BorderRadius.circular(50)),
              child: Image.network(
                'http://rastrosat.com.br/site/wp-content/uploads/2016/08/monitoramento.png',
                height: 90,
                width: 250,
              ),
            ),
            SizedBox(height: 60),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xff000000)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  fillColor: Color(0xffffffff),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  hintStyle: TextStyle(color: Color(0xff000000)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  fillColor: Color(0xffffffff),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'LOGIN',
                style: TextStyle(color: Color(0xffffffff)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff001aff),
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Color(0xff000000), width: 1.0),
                ),
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: Text(
                'Cadastre-se',
                style: TextStyle(
                    color: Color(0xff1ef202),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
