import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blue[800],
     appBar: AppBar(
       backgroundColor: Colors.blue[900],
       leading: IconButton(icon: Icon(Icons.menu), onPressed: (){

       }),
       actions: <Widget>[
         IconButton(icon: Icon(Icons.search), onPressed: (){

         }),
       ],

     ),
     body: Center(
       child: Text('roshans navigation screen',
        style: TextStyle(height: 5, fontSize: 20),
       
       ),
     ),
      
    );
  }
}