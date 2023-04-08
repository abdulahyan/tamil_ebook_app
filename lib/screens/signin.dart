import 'package:ebooks/screens/accueil.dart';
import 'package:ebooks/screens/forgotpassword.dart';
import 'package:ebooks/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:ebooks/bloc/api_service.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  var emailcntrl = TextEditingController();
  var passwordcntrl = TextEditingController();
  ApiService _apiService;

  @override
  void initState() {
    _apiService = new ApiService();
  }

  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(sizeW * 0.05),
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  "Sign in",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: sizeH * 0.15,
              ),
              Text(
                "Sign in with",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: sizeH * 0.02,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(sizeW * 0.06)))),
                      foregroundColor: MaterialStateProperty.all(Color(0xff3b5998))
                    ),
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(sizeW * 0.06))),
                    //color: Color(0xff3b5998),
                    child: Container(
                        width: sizeW * 0.33,
                        height: 43.2,
                        child: Center(
                          child: Text(
                            "Facebook",
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          ),
                        )),
                    onPressed: () {
                      setState(() {
                        _apiService.getData("posts");
                      });
                    },
                  ),
                  SizedBox(
                    width: sizeW * 0.05,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(sizeW * 0.06)))),
                      foregroundColor: MaterialStateProperty.all(Color(0xff1dcaff))
                    ),
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(sizeW * 0.06))),
                    //color: Color(0xff1dcaff),
                    child: Container(
                      width: sizeW * 0.33,
                      height: 43.2,
                      child: Center(
                        child: Text(
                          "Twitter",
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: sizeH * 0.04,
              ),
              Text(
                "Or",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: sizeH * 0.04,
              ),
              TextField(
                controller: emailcntrl,
                decoration: InputDecoration(
                  hintText: "Email",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Theme.of(context).hintColor.withOpacity(0.3)),
                  ),
                ),
              ),
              SizedBox(
                height: sizeH * 0.02,
              ),
              TextField(
                controller: passwordcntrl,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Theme.of(context).hintColor.withOpacity(0.3)),
                  ),
                ),
              ),
              SizedBox(
                height: sizeH * 0.05,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(sizeW * 0.35, 14.4, sizeW * 0.35, 14.4)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                  foregroundColor: MaterialStateProperty.all(Theme.of(context).accentColor)
                ),
                //padding: EdgeInsets.fromLTRB(sizeW * 0.35, 14.4, sizeW * 0.35, 14.4),
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
                //color: Theme.of(context).accentColor,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Theme.of(context).primaryColor),
                ),
              ),
              SizedBox(
                height: sizeH * 0.03,
              ),
              Container(
                height: 144,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Need Account ?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => Signup()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Theme.of(context).accentColor),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Forgot Your Password ?",
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => ForgotPassword()));
                            },
                            child: Text(
                              "Retrive",
                              style: TextStyle(color: Theme.of(context).accentColor),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
