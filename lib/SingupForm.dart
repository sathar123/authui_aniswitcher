






import 'package:flutter/material.dart';

class SingupForm extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter email',
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(

              hintText: 'Enter password',
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirm password',
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
              onPressed: (){
              }, child: Text('Signup'))


        ],
      ),

    );
  }
}
