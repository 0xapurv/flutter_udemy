import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MemberRegPage extends StatelessWidget {
  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
        fit: BoxFit.cover,
        colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
        image: AssetImage("assets/udemy.png"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text('Sign Up'),
        ),
        body: Container(
            decoration: BoxDecoration(image: _buildBackgroundImage()),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
              child: Form(
                  child: Column(
          children: <Widget>[
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                    )),
              ),
              SizedBox(height: 10,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                    )),
              ),
              SizedBox(height: 10,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Password (minimum of 6 characters)',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                    ),
                    suffixIcon: Icon(FontAwesomeIcons.eye, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Recive exclusive offers and promotional emails',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      Checkbox(
                        onChanged: (bool value) {},
                        value: false,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                  width: 320,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3.0)),
                  child:Text(
                    'Confirm',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  )),
              SizedBox(height: 15,),
              Container(
                  width: 320,
                  alignment: Alignment.center,
                  child: Text('By clicking <<Sign Up>> Button, you have read terms and policy and agree.', style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),)),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Already have an account?', style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text('Login', style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
          ],
        )),
            )));
  }
}
