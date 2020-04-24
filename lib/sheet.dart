import 'package:flutter/material.dart';
import 'button_function.dart';
import 'package:undo/undo.dart';

class CustomTile extends StatefulWidget {
  @override
  Sheet createState() => Sheet();
}

class Sheet extends State <CustomTile> {
  int count = 0;
  var changes = ChangeStack();
  bool pressChosed = false;
  bool pressChosed2 = false;
  bool pressChosed3 = false;
  bool pressChosed4 = false;
  bool pressChosed5 = false;
  bool pressChosed6 = false;
  bool pressChosed7 = false;
  bool pressChosed8 = false;
  bool pressChosed9 = false;
  bool pressChosed10 = false;
  bool pressChosed11 = false;
  bool pressChosed12 = false;
  bool pressChosed13 = false;
  bool pressChosed14 = false;
  bool pressChosed15 = false;
  bool pressChosed16 = false;
  bool pressChosed17 = false;
  bool pressChosed18 = false;
  bool pressChosed19 = false;
  bool pressChosed20 = false;
  bool pressChosed21 = false;
  bool pressChosed22 = false;
  bool pressChosed23 = false;
  bool pressChosed24 = false;


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cluedo-Nono game sheet'),
      ),
      // ===============================LES SUSPECTS============================================
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black26,
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: Text('TOOLS'),
                    ),
                    IconButton(
                      icon: Icon(Icons.autorenew),
                      tooltip: 'Reset sheet',
                      color: Colors.redAccent,
                      onPressed: (){
                        //Reset all the sheet
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.undo),
                      tooltip: 'undone action',
                      color: Colors.redAccent,
                      onPressed: !changes.canUndo
                          ? null
                          : () {
                        if (mounted)
                          setState(() {
                            changes.undo();
                          });
                      },
                    ),
                  ],


                ),
              ),
              new Align(
                alignment: Alignment.topCenter,
                child: Center(
                  child:Container(
                    color: Colors.redAccent[200],
                    width: 600,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("SUSPECTS",
                    textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed = !pressChosed,
                                  () => pressChosed = !pressChosed,
                              ));
                              changes.commit();
                            });
                          },
                          child: Container(
                            child: Text("Journaliste", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),


                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                    () => pressChosed2 = !pressChosed2,
                                    () => pressChosed2 = !pressChosed2,
                              ));
                              changes.commit();
                            });
                          },
                          child: Container(
                            child: Text("Technicien", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed2?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),


                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed3 = !pressChosed3,
                                  () => pressChosed3 = !pressChosed3,
                              ));
                            });
                          },
                          child: Container(
                            child: Text("Vigile", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed3?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),


                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                      () => pressChosed4 = !pressChosed4,
                                      () => pressChosed4 = !pressChosed4,
                                ));
                            });
                          },
                          child: Container(
                            child: Text("Ingénieur du son", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed4?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),


                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed5 = !pressChosed5,
                                  () => pressChosed5 = !pressChosed5,
                              ));
                            });
                          },
                          child: Container(
                            child: Text("Hotesse d'accueil", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed5?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),


                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed6 = !pressChosed6,
                                  () => pressChosed6 = !pressChosed6,
                              ));
                            });
                          },
                          child: Container(
                            child: Text("Musicien", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed6?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),



                    ],
                  )
                ],
              ),
              new Align(
                alignment: Alignment.center,
                child: Center(
                  child:Container(
                    color: Colors.blue[200],
                    width: 600,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("ARMES",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed7 = !pressChosed7,
                                  () => pressChosed7 = !pressChosed7,
                              ));
                            });
                          },
                          child: Container(
                            child: Text("SABRE", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed7?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed8 = !pressChosed8,
                                  () => pressChosed8 = !pressChosed8,
                              ));
                            });
                          },
                          child: Container(
                            child: Text("FLECHE", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed8?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed9 = !pressChosed9,
                                  () => pressChosed9 = !pressChosed9,
                              ));
                              pressChosed9 = !pressChosed9;
                            });
                          },
                          child: Container(
                            child: Text("REVOLVER", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed9?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed10 = !pressChosed10,
                                  () => pressChosed10 = !pressChosed10,
                              ));
                            });
                          },
                          child: Container(
                            child: Text("TOURNEVIS", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed10?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed11 = !pressChosed11,
                                  () => pressChosed11 = !pressChosed11,
                              ));
                            });
                          },
                          child: Container(
                            child: Text("GUITARE", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed11?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Card(
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                            setState(() {
                              changes.add(Change.inline(
                                  () => pressChosed12 = !pressChosed12,
                                  () => pressChosed12 = !pressChosed12,
                              ));
                            });
                          },
                          child: Container(
                            child: Text("POISON", textAlign: TextAlign.center,),
                            width: 80,
                            height: 39,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular((10.0)),
                              color: pressChosed12?Colors.green[400]:Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(9.0),
                          ),
                        ),
                        width:45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,  color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              new Align(
                alignment: Alignment.topCenter,
                child: Center(
                  child:Container(
                    color: Colors.black26,
                    width: 600,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("LIEUX",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed13 = !pressChosed13,
                                  () => pressChosed13 = !pressChosed13,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Réception", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed13?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed14 = !pressChosed14,
                                  () => pressChosed14 = !pressChosed14,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Salle de presse", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed14?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed15 = !pressChosed15,
                                  () => pressChosed15 = !pressChosed15,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Bar", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed15?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed16 = !pressChosed16,
                                  () => pressChosed16 = !pressChosed16,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Salle de répétition", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed16?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed17 = !pressChosed17,
                                  () => pressChosed17 = !pressChosed17,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Studio", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed17?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed18 = !pressChosed18,
                                  () => pressChosed18 = !pressChosed18,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Coulisses", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed18?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed19 = !pressChosed19,
                                  () => pressChosed19 = !pressChosed19,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Loge", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed19?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed20 = !pressChosed20,
                                  () => pressChosed20 = !pressChosed20,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Scène", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed20?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Card(
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                        setState(() {
                          changes.add(Change.inline(
                                  () => pressChosed21 = !pressChosed21,
                                  () => pressChosed21 = !pressChosed21,
                              ));
                        });
                      },
                      child: Container(
                        child: Text("Cour arrière", textAlign: TextAlign.center,),
                        width: 80,
                        height: 39,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular((10.0)),
                          color: pressChosed21?Colors.green[400]:Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9.0),
                      ),
                    ),
                    width:45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,  color: Colors.black),
                      borderRadius: BorderRadius.circular((10.0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



}
