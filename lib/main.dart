import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'nextpage.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ 
                 Color(0xFF0288D1),
                 Color(0xFF8A2387),
                 //Color(0xFF66BB6A),
                 Color(0xFF80DEEA),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.
            center,
            children: [
              SizedBox(height: 80,),
              Image.asset('images/logo.png',
              height:150),
              SizedBox(height: 15,),
              SizedBox(height: 30,),
              Container(
                height:480,
                width: 325,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Text('Hello',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Please log in to your account',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          suffixIcon: Icon(FontAwesomeIcons.envelope,
                          size: 17,),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(FontAwesomeIcons.eyeSlash,
                          size: 17,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Forget Password',
                          style: TextStyle(
                            color: Color.fromARGB(255, 170, 9, 3)
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () async {
                      
                        //user loged in successfully
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NextPage()),
                        );
                     
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF0288D1),
                            Color(0xFF8A2387),
                            Color(0xFF66BB6A),
                            Color(0xFF80DEEA),
                          ]
                        )
                      ),
                      child: Padding(
                        padding:EdgeInsets.all(12.0),
                        child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        ),
                      ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('or Login using Social Media',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),  
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(FontAwesomeIcons.solidEnvelope, color: Color.fromARGB(255, 53, 4, 4),),
                    ],
                  ),
            
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}