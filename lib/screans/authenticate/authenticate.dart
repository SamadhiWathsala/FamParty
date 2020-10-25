import 'package:famparty/screans/authenticate/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment(1.3, -1.25),
                    child: Container(
                        width: MediaQuery.of(context).size.height/8,
                        height: MediaQuery.of(context).size.height/8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: Image(image: AssetImage('images/baloon.png'),)
                    ),
                  ),
                  Image(image: AssetImage('images/cover.png'),fit: BoxFit.fitWidth,width: MediaQuery.of(context).size.height/3,height: MediaQuery.of(context).size.height/3,),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                child: Stack(
                  children: <Widget>[
                  Image(image: AssetImage('images/loginCover.png'),
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery
                        .of( context )
                        .size
                        .height/2 ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular( 30.0 ),
                            child: InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width/1.5,
                                height: MediaQuery.of(context).size.width/8,
                                child: Center(child: Text('Register',style: TextStyle(fontSize: 18.0),)),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                              },
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular( 30.0 ),
                          child: InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width/1.5,
                              height: MediaQuery.of(context).size.width/8,
                              child: Center(child: Text('Log In',style: TextStyle(fontSize: 18.0),)),
                            ),
                            onTap: (){
                              //TODO update with navigation path
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
