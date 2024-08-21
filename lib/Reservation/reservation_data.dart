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
class Fuddo extends State{
  String? _selectedValue;
  // The list of items in the dropdown
  final List<String> _dropdownItems = [
    "Pending",
    "Confirmed",
    "Completed",
    "Cancelled",
    "All",
  ];
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,
          title: Text("Reservation Management",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Montserrat",fontSize: 20),),
          actions: [
            Icon(Icons.refresh_rounded,color: Colors.white,size: 30,)
          ],
        ),
        body: SingleChildScrollView(padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(children: [
            SizedBox(height: 10,),
            Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotel Mayukh..',
                  style: TextStyle(fontSize: 25,fontFamily: "Montserrat"),),
                DropdownButton<String>(
                  // The currently selected item
                    value: _selectedValue,
                    // Text to display when nothing is selected
                    hint: Text("All",style: TextStyle(fontFamily: "Montserrat"),),
                    // List of dropdown items
                    items: _dropdownItems.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    // What to do when an item is selected
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedValue = newValue;
                      }
                      );
                    })
              ],
            ),),
            SizedBox(height: 20,),
            TextFormField(
              decoration:InputDecoration(
                  labelText: "Search here",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0), // Add some padding around the image
                    child: SizedBox(
                      height: 10,  // Set the height explicitly
                      width: 10,   // Set the width explicitly
                      child: Image.asset(
                        "assets/images/searchicon.png",
                        fit: BoxFit.contain,  // Ensure the image scales correctly within the box
                      ),
                    ),
                  ),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID:HOT-0000001",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Montserrat"),),
                Container(
                  padding:EdgeInsets.symmetric(vertical: 5,horizontal: 10) ,
                  child: Text("Cancelled",style: TextStyle(fontSize: 15,fontFamily: "Montserrat"),),
                  decoration: BoxDecoration(
                      border:Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(0)
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("11:30 07 Feb 24",style: TextStyle(fontFamily: "Montserrat",fontSize: 15,),)
                    ),
                    Container(
                        child: Column(children: [
                          Text("Bhanu Laxman",style: TextStyle(fontFamily: "Montserrat"),),
                          Text("Guests: 2 Person(s)",style: TextStyle(fontFamily: "Montserrat"))
                        ],)
                    )
                  ],)
            ),
            SizedBox(height: 10,),
            Container(
                decoration: BoxDecoration(
                    border:Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(0)
                ),
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Text("Hotel Mayukha Multi        ",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
                            Text("Cuisine Restaurant KPHB",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold))
                          ]),),
                    Container(
                        child:ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),child: Text("EDIT",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: "Montserrat",),))
                    ),],)),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID:HOT-0000017",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Montserrat"),),
                Container(
                  padding:EdgeInsets.symmetric(vertical: 5,horizontal: 10) ,
                  child: Text("Cancelled",style: TextStyle(fontSize: 15,fontFamily: "Montserrat"),),
                  decoration: BoxDecoration(
                      border:Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(0)
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("12:00 14 May 24",style: TextStyle(fontFamily: "Montserrat"),)
                    ),
                    Container(
                        child: Column(children: [
                          Text("                      Raj N",style: TextStyle(fontFamily: "Montserrat"),),
                          Text("Guests: 2 Person(s)",style: TextStyle(fontFamily: "Montserrat"))
                        ],)
                    )
                  ],)
            ),
            SizedBox(height: 10,),
            Container(
                decoration: BoxDecoration(
                    border:Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(0)
                ),
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Text("Hotel Mayukha Multi        ",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
                            Text("Cuisine Restaurant KPHB",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold))
                          ]),),
                    Container(
                        child:ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),child: Text("EDIT",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily:"Montserrat" ),))
                    ),],)),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID:HOT-0000020",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Montserrat"),),
                Container(
                  padding:EdgeInsets.symmetric(vertical: 5,horizontal: 10) ,
                  child: Text("Cancelled",style: TextStyle(fontSize: 15,fontFamily:"Montserrat" ),),
                  decoration: BoxDecoration(
                      border:Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(0)
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("17:30 18 May 24",style: TextStyle(fontFamily: "Montserrat",))
                    ),
                    Container(
                        child: Column(children: [
                          Text("                      Raj N",style: TextStyle(fontFamily: "Montserrat")),
                          Text("Guests: 2 Person(s)",style: TextStyle(fontFamily: "Montserrat",))
                        ],)
                    )
                  ],)
            ),
            SizedBox(height: 10,),
            Container(
                decoration: BoxDecoration(
                    border:Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(0)
                ),
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Text("Hotel Mayukha Multi        ",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
                            Text("Cuisine Restaurant KPHB",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold))
                          ]),),
                    Container(
                        child:ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),child: Text("EDIT",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: "Montserrat"),))
                    ),],)),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID:HOT-0000027",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Montserrat"),),
                Container(
                  padding:EdgeInsets.symmetric(vertical: 5,horizontal: 10) ,
                  child: Text("Confirmed",style: TextStyle(fontSize: 15,fontFamily: "Montserrat"),),
                  decoration: BoxDecoration(
                      border:Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(0)
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("19:00 11 Aug 24",style: TextStyle(fontFamily: "Montserrat"))
                    ),
                    Container(
                        child: Column(children: [
                          Text("Bhanu Laxman",style: TextStyle(fontFamily: "Montserrat"),),
                          Text("Guests: 2 Person(s)",style: TextStyle(fontFamily: "Montserrat"))
                        ],)
                    )
                  ],)
            ),
            SizedBox(height: 10,),
            Container(
                decoration: BoxDecoration(
                    border:Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(0)
                ),
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Text("Hotel Mayukha Multi        ",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
                            Text("Cuisine Restaurant KPHB",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold))
                          ]),),
                    Container(
                        child:ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),child: Text("EDIT",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: "Montserrat",),))
                    ),],)),
          ],),
        )
    );
  }
}