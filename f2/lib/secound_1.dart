// import 'package:f2/main.dart';
import 'package:f2/no1.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Secound_1 extends StatefulWidget{

  @override
  State<Secound_1> createState() => _Secound_1State();
}

class _Secound_1State extends State<Secound_1> {
  bool isfial = true;
  @override

   @override
  void initState() {
  
    super.initState();
    Timer(const Duration(seconds: 1), () {
          setState(() {
            isfial = false;
          });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
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
                  color: Color(0xffffe9ec),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(21),
                         
                            child: Container(
                              color: Color(0xffffe9ec),
                              child: Image.asset("assets/images/image2.png",
                              fit: BoxFit.cover,
                              width: 250,
                              height: 200,
                              ),
                            ),
                          ),
                        ),
                      
                      SizedBox(height: 40,),
                      Center(child: Text("Please don't do this 🥺 \n Give me one chance to fix everything...",textAlign: TextAlign.center,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Container(
                          width: 140,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              foregroundColor: Colors.black
                            ),
                            onPressed: (){
                            Navigator.pop(context);
                            
                          }, child: Center(child: Text("GoBack ❤️",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),))),
                        ),
                      ),
                      SizedBox(width: 60,),
                       Padding(
                         padding: const EdgeInsets.only(left: 40),
                         child: Container(
                          width: 140,
                          height: 60,
                           child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black
                            ),
                            onPressed: (){
                              
                             Navigator.push(context, MaterialPageRoute(builder: (context) {
                               return No1(); 
                             },));
      
                          }, child: Center(child: Text("Nooooo🥺",style: TextStyle(fontSize: 18,),))),
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