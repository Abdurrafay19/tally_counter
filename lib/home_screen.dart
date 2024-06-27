import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor:const Color(0xFFab100e),
          title:const Center(child:  Text('Tally Counter',style: TextStyle(fontSize: 34,fontFamily: 'PixelifySans Medium'),),)
        ),
        backgroundColor:const Color(0xFF46b8bc),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 200,),
              const Center(child: Text('Count:',style: TextStyle(fontSize: 40,color: Color(0xFFc96c10),fontFamily: 'PixelifySans Regular'),),),
              Center(child: Text(x.toString(), style:const TextStyle(fontSize: 87,color: Color(0xFFab0e5a),fontFamily: 'PixelifySans Bold'),)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.large(backgroundColor:const Color(0xFFa8ab0e),
          elevation: 5,
          shape:const CircleBorder(),
          onPressed:(){
            x++;
            setState(() {

            });
          } ,
          child:const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar:const Padding(
          padding:  EdgeInsets.all(60.0),
          child: BottomAppBar( color: Color(0xFF46b8bc),),
        ),
      ),
    );
  }
}
