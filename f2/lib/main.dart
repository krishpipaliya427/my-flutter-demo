import 'dart:async';

import 'package:f2/secound_1.dart';
import 'package:f2/yes.dart';
import 'package:flutter/material.dart';
// import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isfial = true;

  double laft = 100;
  double top  = 300;

 @override
  void initState() {
  
    super.initState();
    Timer(const Duration(seconds: 1), () {
          setState(() {
            isfial = false;
          });
    });
  }

  @override
  Widget build(BuildContext context) {


   
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
        
      ),
      body: Center(
        child:Container(
             width: double.infinity,
             height: double.infinity,
             color: Color(0xffffb6c1),
        
        child: AnimatedCrossFade(firstChild: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffb6c1)
          ),  

        ), secondChild: Center(
          child: Container(
            width: 600,
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 1),
              borderRadius: BorderRadius.circular(20 )
            ),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20
                  )
                ]
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Container(
                  color:  Color(0xffffe9ec),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/emoji.jpeg",
                          fit: BoxFit.cover,
                          width: 250,
                          height: 200,
                          
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Center(child: Text("There's something for you love \n  Will you see it?",textAlign: TextAlign.center,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,))),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Container(
                          width: 140,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              foregroundColor: Colors.black
                            ),
                            onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Yes();
                            },));
                          }, child: Text("Yes",style: TextStyle(fontSize: 21),)),
                        ),
                      ),
                      SizedBox(width: 60,),
                       Padding(
                         padding: const EdgeInsets.only(left: 40),
                         child: Container(
                          width: 140,
                          height: 40,
                           child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Secound_1();
                              },));
      
                          }, child: Text("No",style: TextStyle(fontSize: 21,),)),
                         ),
                       )
                        ]
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
           ), crossFadeState: isfial? CrossFadeState.showFirst:CrossFadeState.showSecond, duration: Duration(seconds: 2)),
      )
      )
    );
  }
}
