// import 'package:f2/p.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Forgive extends StatefulWidget{
  @override
  State<Forgive> createState() => _ForgiveState();
}

class _ForgiveState extends State<Forgive> {
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
            width: 550,
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
                borderRadius: BorderRadius.circular(20),
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
                            child: Image.asset("assets/images/goma.jpg",
                            fit: BoxFit.contain,
                            width: 250,
                            height: 200,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Center(child: Text("Now you Forgive me\n",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 240, 56, 117)
                    ))),
                    SizedBox(height: 10,),
                    Text("Please smile and do a video call 📞\n I want to see you smile💖 ",textAlign: TextAlign.center, style: TextStyle(fontSize: 18),),
                   SizedBox(height: 50,),
                    
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
    
  
