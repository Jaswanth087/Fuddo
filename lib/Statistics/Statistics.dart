import 'package:flutter/material.dart';
void main(){
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget{
  String? _selectedValue;

  // The list of items in the dropdown
  final List<String> _dropdownItems = [
    'Choose a restarent',
    'Hotel Mayukha Multi Cuisine Restaurant KPHB',
    '',
    '',
  ];
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.redAccent  ,
              title: Text("Statistics",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,fontFamily: "Monteserrat"),),
            ),
            body: SingleChildScrollView(child:Center(child: Column(children: [
              SizedBox(height: 20,),
              DropdownButton<String>(
                value: _selectedValue,
                hint: Text('Hotel Mayukha Multi Cuisine Res..',style: TextStyle(fontSize: 23,fontFamily: "Monteserrat"),), // Hint text shown when no item is selected
                icon: Icon(Icons.arrow_drop_down), // The dropdown icon
                // The elevation of the dropdown menu
                style: TextStyle(color: Colors.black, fontSize: 16), // Text style inside dropdown
                onChanged: (value){},
                items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20,),
              Container(margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/sales.png",height: 40,),
                    SizedBox(width: 16,),Expanded(child:
                    Text("Total Sales",style: TextStyle(fontSize: 20),),),
                    Text("473.87",style: TextStyle(fontSize: 20,fontFamily: "Monteserrat"),),
                  ],
                ),
              ),Container(margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/customers.png",height: 40,),
                    SizedBox(width: 16,),Expanded(child:
                    Text("Total Customers",style: TextStyle(fontSize: 20,fontFamily: "Monteserrat"),),),
                    Text("2",style: TextStyle(fontSize: 20,fontFamily: "Monteserrat"),),
                  ],
                ),
              ),
              Container(margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Orders.png",height: 40,),
                    SizedBox(width: 16,),Expanded(child:
                    Text("Total orders",style: TextStyle(fontSize: 20,fontFamily: "Montserrat"),),),
                    Text("6",style: TextStyle(fontSize: 20,fontFamily: "Montserrat"),),
                  ],),
              ),SizedBox(height: 185,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25,
                ),
                label: Container(height: 30,width: 300,
                  child: Text(
                    "BACK TO DASHBOARD",
                    style: TextStyle(fontSize: 25, color: Colors.white,fontFamily: "Montserrat",fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.all(15),
                  textStyle: TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),

                  ),
                ),
              )]
            ),
            )

            )
        ));
  }
}