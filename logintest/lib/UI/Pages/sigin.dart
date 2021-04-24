import 'package:flutter/material.dart';
import '../Main/DesignForAllScreen.dart';

class Signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignApp();
  }
}

class SignApp extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
        textDirection: TextDirection.rtl,
        child: new Scaffold(
          appBar: MyAppBar("تسجيل الدخول"),
          body: Container(
            width: 500,
            margin: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: ListView(
              children: <Widget>[
                Container(
                    color: Colors.grey,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: new Text("تسجيل الدخول",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold))),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: 70.0,
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: new Text(
                            "اسم المستخدم",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'اسم المستخدم'),
                      ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 70.0,
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: new Text(
                            "كلمة المرور ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'كلمة المرور'),
                      ))
                    ],
                  ),
                ),
                Container(
                  //width: 40,
                  margin: EdgeInsets.fromLTRB(100, 30, 100, 30),
                  child: RaisedButton(
                    child: Text(
                      'دخول',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.white,
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(2)),
                    onPressed: () {},
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(color: Colors.black))),
                          child: TextButton(
                            onPressed: () => {},
                            child: new Text(
                              "مستخدم جديد",
                              style: TextStyle(fontSize: 15, color: Colors.red),
                            ),
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: TextButton(
                              onPressed: () => {},
                              child: new Text(
                                "نسيت كلمة المرور",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                ),
                              ))),
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: MyNavigationBar(2),
        ));
  }
}
