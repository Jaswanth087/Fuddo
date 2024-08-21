import 'package:flutter/material.dart';
void main()=>runApp(App());
class App extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
class MyApp extends StatefulWidget{
  State createState()=>Fuddo();
}
class Fuddo extends State<MyApp>{
  final formKey=GlobalKey<FormState>();
  final _emailControler=TextEditingController();
  final _passwordControler=TextEditingController();
  String? _Validemail(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter a valid email";
    }
    final pattern ='2022';
    final RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(pattern)) {
      return "Enter a valid email";
    }
    return null;
  }
  String? validpassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter a valid password";
    }
    final pattern = "hotel";
    final RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(pattern)) {
      return "Enter a valid password";
    }return null;
  }

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Montserrat"),),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(child:Padding(
          padding: EdgeInsets.fromLTRB(20,55,20,5),
          child: Form (key:formKey,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child:Column(
                    children: [
                      SizedBox(height: 90,),
                      Image.asset("assets/images/Logo.png",height: 100,width: 450,),
                      SizedBox(height: 20,),
                      Divider(
                        color: Colors.red.shade900,  // Color of the line
                        thickness: 2,       // Thickness of the line
                        indent: 10,         // Left indent
                        endIndent: 10,      // Right indent
                      ),SizedBox(height: 20,),
                      TextFormField(
                        controller: _emailControler,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0), // Add some padding around the image
                            child: SizedBox(
                              height: 10,  // Set the height explicitly
                              width: 10,   // Set the width explicitly
                              child: Image.asset(
                                "assets/images/username.png",
                                fit: BoxFit.contain,  // Ensure the image scales correctly within the box
                              ),
                            ),
                          ),
                          labelText: "Username",
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red.shade900,width: 2.0),),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red.shade900, width: 2.0), // Border color when error
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red.shade900, width: 2.0), // Border color when focused
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red.shade900, width: 2.0), // Border color when focused and error
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ), validator: _Validemail,
                      ),
                      SizedBox(height: 20,),

                      TextFormField(
                        obscureText: true,
                        controller: _passwordControler,
                        decoration: InputDecoration(
                            prefixIcon: Image.asset("assets/images/password.png",),
                            labelText: "Password",
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red.shade900,width: 2)),
                            suffixIcon: Icon(Icons.visibility_off,),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color when error
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red.shade900, width: 2.0), // Border color when focused
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color when focused and error
                              borderRadius: BorderRadius.circular(10.0),
                            )
                        ),
                        validator: validpassword,
                      ),
                      Align(alignment: Alignment.centerRight,
                          child:
                          TextButton(onPressed: (){

                          }, child: Text("Forgot Password?",style: TextStyle(color: Colors.red,fontSize: 15,fontFamily: "Montserrat"),))
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // Handle login logic
                          print('Email: ${_emailControler.text}');
                          print('Password: ${_passwordControler.text}');

                        }
                      },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.red.shade900,
                          minimumSize: Size(100, 50),
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 10,
                          ),
                        ),
                        child: Container(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(fontSize: 20, color: Colors.white,
                                fontFamily: "Montserrat"),
                        )
                        ),)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
        )
    );
  }
}
