import 'package:flutter/material.dart';

void main() {
  runApp(const RegisterApp());
}
class RegisterApp extends StatefulWidget {
  const RegisterApp({Key? key}) : super(key: key);

  @override
  State<RegisterApp> createState() => _RegisterAppState();
}

class _RegisterAppState extends State<RegisterApp> {
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:Text('Register',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Icon(Icons.arrow_back,color: Colors.black,),
      ),
        body:SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: 'Phone Number'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'Address',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'Company Name'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'Website Name',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'E-mail Address',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration( suffixIcon:Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Checkbox(
                          checkColor:Colors.black,
                          value: a, onChanged: (bool? value){
                        setState(() {
                          a=value!;
                        });
                      }),
                    ),
                    Text('I agree with'),
                  ],
                ),
                SizedBox(height:50,),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,),
                  child: TextButton(onPressed:() {}, child: Text('Create Account',style: TextStyle(fontSize: 20,color: Colors.white),)),
                ),
                SizedBox(height: 30,),
                Text('Already have an account?',style: TextStyle(fontSize: 12),)
              ],
            ),
        ),
        ),
    );
  }
}

