

import 'package:flutter/material.dart';
import 'screen2.dart';

void main() {
  runApp(Screen());
}
class Screen extends StatelessWidget {
  GlobalKey<ScaffoldState> _scafoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key:_scafoldKey ,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[200],
        appBar: AppBar(

          leading: IconButton(icon: Icon(Icons.menu), onPressed:() {
            _scafoldKey.currentState.openDrawer();

          }),
          title: Text('Roshan4u'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){

            }),
          ],
backgroundColor: Colors.red[300],

      ),
        body: Center(
          child: RaisedButton(
            child: Text('press me!!!'),
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>Screen2()));
              
            },
          ),

        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(child: Text('hi roshan',
              style: TextStyle(
                color: Colors.white
              ),

              ),
              decoration: BoxDecoration(
                color: new Color(0xff672F24),
              ),
              ),
              ListTile(
                title: Text('menu 1'),
                onTap:() { Navigator.pop(context);
                },
              ),
              ListTile( title: Text('menu 2'),
                onTap:() { Navigator.pop(context);},),
              ListTile( title: Text('menu 3'),
                onTap:() { Navigator.pop(context);},),

            ],
          ),
        
        ),
        
      ),
      

    );
  }
}
