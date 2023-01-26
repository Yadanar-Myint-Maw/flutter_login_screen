import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        leading: Icon(
          Icons.chevron_left,
          size: 32,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        color: Color.fromRGBO(19, 19, 19, 1.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    )),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    )),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: (){
                  print("Sign in button tapped");
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

              SizedBox(height: 20),

              TextButton(
                onPressed: (){
                  print("Recover password button tapped");
                },
                child: Text(
                  "Recovered Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
