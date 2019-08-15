import 'package:flutter/material.dart';
import 'package:flutter_learning_01/screens/menu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double mySizeLogo = 160;
  Color myColor = Colors.blue[700];

  Widget signInBtn() {
    return Container(
      width: 200,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.indigo[700],
        child: Text(
          'เข้าสู่ระบบ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: () {
          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => Menupage());
          Navigator.of(context).pushAndRemoveUntil(
              materialPageRoute, (Route<dynamic> route) => false);
        },
      ),
    );
  }

  Widget showAppName() {
    return Text(
      'Flutter Gallery',
      style: TextStyle(
        fontFamily: 'Sriracha',
        fontSize: 36,
      ),
    );
  }

  Widget showLogo() {
    return Container(
      width: mySizeLogo,
      height: mySizeLogo,
      child: Image.asset('images/flutter.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.white,
              Colors.grey[400],
            ],
            radius: 1.4,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              showLogo(),
              showAppName(),
              signInBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
