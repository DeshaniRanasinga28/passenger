import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SettingScreenState();
  }
}

class _SettingScreenState extends State<SettingScreen>{
  double deviceWidth, deviceHeight;

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:WillPopScope(
        onWillPop: () async {
          return Future.value(
              false); //return a `Future` with false value so this route cant be popped or closed.
        },
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 40.0),
                  width: deviceWidth,
                  height: deviceHeight/6.0,
                  color: Color(0xFF0065C4),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.search, color: Colors.white,),
                      ),
                      Expanded(
                        child: Container(
                          height: 50.0,
                          padding: EdgeInsets.only(right: 20.0, left: 20.0),
                          child: TextField(
                            textAlign: TextAlign.center,
                            autofocus: false,
                            style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter city',
                              hintStyle: TextStyle(
                                fontSize: 14.0,
                              ),
                              contentPadding:
                              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Image.asset("assets/backgroungamp.png", width: deviceWidth + 10.0, height: deviceHeight+20.0,),
                    ),
                  ),
                )
              ],
            )
          ],
        ),),
    );
  }
}