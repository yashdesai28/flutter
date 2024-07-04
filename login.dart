import 'package:fci1/sec.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  var name1,email1;
  TextEditingController name =TextEditingController();
  TextEditingController email =TextEditingController();

  btn(){
    setState(() {
      name1 =name.text;
      email1 = email.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          leading: IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios,color: Colors.black),
            
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2 - 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Illustration.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Column(
                      children: [
                        TextField(
                          controller: name,
                          decoration: InputDecoration(
                              labelText: "enter the email",
                              hintText: "yashdesai@gmail.com"),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            labelText: "enter the name",
                            hintText: "yash",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        
                        SizedBox(height: 30,),
                        ElevatedButton(onPressed: (){btn();
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> sec(data:"hello")));
                          }, child: Text("submit")),
                        SizedBox(height: 20,),

                        Text("name:-$name1  email:- $email1")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
