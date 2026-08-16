import 'package:f2/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class No1 extends StatefulWidget{
  @override
  State<No1> createState() => _No1State();
}

class _No1State extends State<No1> {
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
      appBar: AppBar(title: Text("No"),),
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
            width: 500,
            height: 450,
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
                            child: Image.asset("assets/images/mafi.png",
                            fit: BoxFit.cover,
                            width: 250,
                            height: 200,
                            ),
                          ),
                        ),
                      
                      SizedBox(height: 40,),
                      Center(child: Text("Pleaseeeee.....",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                      SizedBox(height: 50,),
                    Container(
                          width: 140,
                          height: 60,
                          child: Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                foregroundColor: Colors.black
                              ),
                              onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return MyHomePage(title: "goback");
                              },));
                              
                            }, child: Center(child: Text("GoBack ❤️",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),))),
                          ),
                        ),
                    ]
                
                      )
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