import 'package:fci1/control.dart';
import 'package:fci1/login.dart';
import 'package:flutter/material.dart';

class sec extends StatefulWidget {
  final String data;
  const sec({super.key, required this.data});


  @override
  State<sec> createState() => _secState();
}

class _secState extends State<sec> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sec"),
        leading: IconButton(onPressed: () {Navigator.pop(context);  }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),

        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("hello + ${widget.data}"),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>(control())));
            }, child:Text("submit"))
          ],
        ),
      ),
    );
  }
}
