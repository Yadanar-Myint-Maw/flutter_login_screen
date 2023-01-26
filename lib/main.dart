import 'package:flutter/material.dart';
import 'package:flutter_login_screen/widgets/WhiteBoxWidget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.network(
          'https://assets.stickpng.com/thumbs/5f4924f968ecc70004ae7066.png',
          width: 70,
          height: 70,
        ),
        backgroundColor: Color.fromRGBO(17, 22, 29, 1.0),
        leading: Center(
          child: Text(
            'Back',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ),
        actions: refreshIcons,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        color: Color.fromRGBO(17, 22, 29, 1.0),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "Create account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            WhiteBoxWidget(
              hintName: "First and last name",
            ),
            SizedBox(
              height: 16,
            ),
            WhiteBoxWidget(
              hintName: "Your email address",
            ),
            SizedBox(
              height: 16,
            ),
            WhiteBoxWidget(
              hintName: "Create a password",
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Row(
                children: const [
                  infoIcon,
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Password must be at least 6 characters",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Text(
                  "Create Your Amazon Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                "Already have an account?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(69, 81, 99, 1.0)),
                ),
                child: const Text(
                  "Sign-In now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),

            // Container(
            // alignment: Alignment.center,
            // child: Text.rich(
            // TextSpan(
            // children: <InlineSpan>[
            // WidgetSpan(
            // child: Icon(Icons.copyright,size: 15,
            // color: Color.fromRGBO(65, 81, 101, 1.0),)
            // ),
            // TextSpan(text:"1996-2021,Amazon.com, Inc. or its affilliates")
            // ]
            // ),

            Align(
              alignment: Alignment.center,
              child: Text.rich(
              TextSpan(
              children: <InlineSpan>[
              WidgetSpan(
              child: Icon(Icons.copyright,size: 15,
              color: Color.fromRGBO(109, 123, 134, 1.0),)
              ),
              TextSpan(text:"1996-2021,Amazon.com, Inc. or its affilliates")
              ],
            ),
                style: TextStyle(
                    color: Color.fromRGBO(65, 81, 101, 1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// Image logoImage = Image.asset(
//   'assets/images/logo.png',
//   width: 120,
//   height: 40,
// );

const refreshIcons = [
  Icon(
    Icons.refresh,
    size: 32,
  )
];

const infoIcon = Icon(
  Icons.info_outline,
  color: Colors.blue,
  size: 16,
);
