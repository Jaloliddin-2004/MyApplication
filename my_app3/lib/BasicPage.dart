import 'package:flutter/material.dart';
import 'package:my_app3/HomePage.dart';
import 'package:my_app3/Page.dart';
import 'package:my_app3/service.dart';

class BasicPage extends StatefulWidget {
  const BasicPage({super.key});

  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  GlobalKey<FormState> _key = GlobalKey();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  void initState() {
    Service().postPupil();
    Service().deleteData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('  '))),
          ),
          Text(
            'Login',
            style: TextStyle(fontSize: 30, color: Colors.deepPurple[300]),
          ),
          Form(
            key: _key,
            child: Center(
            
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _namecontroller,
                      decoration: InputDecoration(
                          labelText: "Text",
                          labelStyle: TextStyle(color: Colors.deepPurple),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                          errorStyle: TextStyle(color: Colors.deepPurple)),
                    ),
                    TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.deepPurple),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          errorStyle: TextStyle(color: Colors.deepPurple)),
                    ),
                    SizedBox(height: 200,),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>FutureBuilderExample()),
                          );
                        },
                        child: const Text('Sign in',style: TextStyle(fontSize: 20),))
                  ],
                ),
              ),
            )]
          )
        
      );
    
  }
}
