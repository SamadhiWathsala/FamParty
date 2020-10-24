import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Image(image: AssetImage('images/cover.png'),
              fit: BoxFit.cover,
              height: MediaQuery
                  .of( context )
                  .size
                  .height/2, ),
            Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Flexible(
                  child: Form(
//                    key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all( 8.0 ),
                            child: Material(
                              borderRadius: BorderRadius.circular( 30.0 ),
                              color: Colors.white.withOpacity( 0.5 ),
                              child: Padding(
                                padding: const EdgeInsets.only( left: 8.0 ),
                                child: TextFormField(
                                  onChanged: (val) {
//                                  setState( () => staffID = val );
                                  },
                                  validator: (val) =>
                                  val.isEmpty
                                      ? 'This field is required'
                                      : null,
                                  decoration: InputDecoration(
                                      hintText: 'User name',
                                      prefixIcon: Icon( Icons.person )
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all( 8.0 ),
                            child: Material(
                              borderRadius: BorderRadius.circular( 30.0 ),
                              color: Colors.white.withOpacity( 0.5 ),
                              elevation: 0.0,
                              child: Padding(
                                padding: const EdgeInsets.only( left: 8.0 ),
                                child: TextFormField(
                                  obscureText: true,
                                  onChanged: (val) {
//                                  setState( () => password = val );
                                  },
                                  validator: (val) =>
                                  val.length < 6
                                      ? 'Enter password more than 6 characters'
                                      : null,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: Icon( Icons.lock ),

                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all( 8.0 ),
                            child: Material(
                              borderRadius: BorderRadius.circular( 30.0 ),
                              color: Colors.white.withOpacity( 0.5 ),
                              elevation: 0.0,
                              child: Padding(
                                padding: const EdgeInsets.only( left: 8.0 ),
                                child: TextFormField(
                                  obscureText: true,
                                  onChanged: (val) {
//                                  setState( () => password = val );
                                  },
                                  validator: (val) =>
                                  val.length < 6
                                      ? 'Enter password more than 6 characters'
                                      : null,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    prefixIcon: Icon( Icons.lock ),

                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all( 8.0 ),
                            child: Material(
                                borderRadius: BorderRadius.circular( 30.0 ),
                                color: Colors.purple,
                                elevation: 0.0,
                                child: MaterialButton(
                                  onPressed: () {

//
                                  },
                                  child: Text( "Sign In",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0
                                    ),
                                  ),
                                  minWidth: MediaQuery
                                      .of( context )
                                      .size
                                      .width,
                                )
                            ),
                          ),
                        ],
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
