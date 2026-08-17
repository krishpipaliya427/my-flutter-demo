import 'package:f2/next2.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Next extends StatefulWidget{
  @override
  State<Next> createState() => _YesState();
}

class _YesState extends State<Next> {
  bool isfinal = true;
  @override
  void initState() {
  
    super.initState();
    Timer(const Duration(seconds: 1), () {
          setState(() {
            isfinal = false;
          });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                height: 480,
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
                    borderRadius: BorderRadius.circular(21),
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
                                child: Image.asset("assets/images/peach1.png",
                                fit: BoxFit.cover,
                                width: 250,
                                height: 200,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Text("I'm not Happy without you.. ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("I miss you.A lot🥺",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 40,),
                           Container(
                            width: 170,
                             child: Padding(
                               padding: const EdgeInsets.all(10),
                               child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.pink,
                                            foregroundColor: Colors.black
                                          ),
                                          onPressed: (){
                                          
                                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                            return Next2();
                                          },));
                                        }, child: Center(child: Text("Listen More😊",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),))),
                             ),
                           ),
                        ],
                      ),
                     ),
                   ),
                 ),
               ),
             ), crossFadeState: isfinal? CrossFadeState.showFirst:CrossFadeState.showSecond,
              duration: Duration(seconds: 2)),
        ),
      ),
    );
    
  }
}