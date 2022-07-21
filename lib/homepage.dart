import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_page/coustom_text_feild.dart';
import 'package:login_page/text_field_demo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<FormState> _formkeyy = GlobalKey<FormState>();

  TextEditingController emailcontrolar = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  String? email, password;
  String?emailError, passError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                transform: GradientRotation(90),
                colors: [
                  Color(0xFFE2A397),
                  Color(0xFF9E84A3),
                  Color(0xFF385C95),
                ],
              ),
            ),
          ),
          Positioned(
            left: 85,
            right: 85,
            bottom: 130,
            child: InkWell(
              onTap: (){
                email = emailcontrolar.text;
                password = passwordcontroller.text;
                if(_formkeyy.currentState!.validate()){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TextFeildDemo(
                    emailfrom: email,
                    passwordfrom: password,
                  )));
                }
                else{
                  print('Invalide Informations');
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    //transform: GradientRotation(90),
                    colors: [
                      Color(0xFFDECACF),
                      Color(0xFF86A5C9),
                    ],
                  ),
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 50,
            right: 50,
            child: Container(
              alignment: Alignment.center,
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFE1CCD5),
                    Color(0xFFACBED9),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 4),
                      spreadRadius: 2)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Form(
                  key: _formkeyy,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CoustomTextFormFeild(
                        controller: emailcontrolar,
                        hintText: 'Email ID',
                        prefixIcon: Icons.email,
                        validator: (value){
                          if(value.toString().isEmpty){
                            return ('Please enter your email');
                          }
                          if(!value.toString().contains('@')){
                            return ('Please enter a valid email');
                          }
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CoustomTextFormFeild(
                        controller: passwordcontroller,
                        validator: (value){
                          if(value.toString().isEmpty){
                            return ('Please enter your password');
                          }
                          if(value.toString().length>10){
                            return ('Your password is too long');
                          }
                          if(value.toString().length<4){
                            return ('Your password is too short');
                          }
                        },
                        hintText: 'Password',
                        prefixIcon: Icons.lock,
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: null,
                                fillColor: MaterialStateProperty.all(Color(0xFF0F3551)),
                              ),
                              Text('Remember me',
                                style: TextStyle(
                                    color: Color(0xFF445C7B)
                                ),
                              ),
                            ],
                          ),
                          Text('Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF445C7B)
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //Circular Aveter
          Positioned(
            top: 230,
            left: 50,
            right: 50,
            child: CircleAvatar(
              radius: 70,
              child: Icon(
                Icons.person_outline,
                size: 90,
              ),
              backgroundColor: Color(0xFF123357),
            ),
          ),
        ],
      ),
    );
  }
}
