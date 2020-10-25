import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var actHeight = MediaQuery.of(context).size.height;
    var actWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        SizedBox.expand(
          child: Container(
              child: Image(
                  image: AssetImage('images/loginBG.png'), fit: BoxFit.fill)),
        ),
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xffF86363).withOpacity(0.3),
                  Color(0xffF86363).withOpacity(1)
                ])),
            child: Padding(
              padding: EdgeInsets.only(
                // left: (25 / 360) * actWidth,
                left: (actWidth - ((315 / 360) * actWidth)) / 2,
                top: (375 / 640) * actHeight,
                right: (actWidth - ((315 / 360) * actWidth)) / 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Kapda & ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'poppins'),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Tees',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: 'poppins-semibold')),
                      ],
                    ),
                  ),
                  Text(
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'poppins')),
                  SizedBox(height: (25 / 640) * actHeight),
                  Container(
                      height: 60,
                      width: (315 / 360) * actWidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: Text('GOOGLE SIGN-IN',
                            style: TextStyle(
                                color: Color(0xffF86363),
                                fontSize: 18,
                                fontFamily: 'poppins-semibold')),
                      )),
                  SizedBox(height: (15 / 640) * actHeight),
                  Container(
                    height: 60,
                    width: (315 / 360) * actWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Center(
                      child: Text('OTP SIGN-IN',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 18,
                              fontFamily: 'poppins-semibold')),
                    ),
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}
