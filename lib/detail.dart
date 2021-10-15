import 'package:flutter/material.dart';
import 'form.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Course'),
          backgroundColor: Colors.orange,

        ),
        body: const MyCustomForm(),

      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({  key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal:50, vertical: 50),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Course name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Details',
            ),
          ),
        ),
       ButtonBar(
         alignment: MainAxisAlignment.center,
         children: [
           FlatButton(
             child: Text('Register'),
             onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Register()),
               );
             },



           )
         ],
       ),
      ],
    );
  }
}