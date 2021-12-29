import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder()
                ),
                onChanged: (text) {
                  
                },
              ),
            ],
          )
        ),
      ),
    );
  }
}