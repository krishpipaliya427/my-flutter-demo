import 'package:f2/next.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Yes extends StatefulWidget{
  @override
  State<Yes> createState() => _YesState();
}

class _YesState extends State<Yes> {
  bool isfinal = true;
  List<String> messages = [];
  @override
  void initState() {
  
    super.initState();
    Timer(const Duration(seconds: 1), () {
          setState(() {
            isfinal = false;
          });
    });
  Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        messages.add("Riteshhhhhhhhhhhhhhhhh");
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        messages.add("I'am really Sorry..😭");
      });
    });

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        messages.add("I have something to say... ❤️");
      });
    });

    Future.delayed(const Duration(seconds: 7), () {
      setState(() {
        messages.add("Will you be with me? 🥰");
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
                width: 600,
                height: 550,
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
                                child: Image.asset("assets/images/cat.png",
                                fit: BoxFit.cover,
                                width: 250,
                                height: 200,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Text("Riteshhhhhhhhhhhhhhhhh",textAlign:TextAlign.center, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("I'am really Sorry..😭",textAlign:TextAlign.center, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                          SizedBox(height: 10,),
                          Text("I didin't mean to hurt you... 🥺",textAlign:TextAlign.center, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                          SizedBox(height: 10,),
                          Text("I know I messed up,and i truly regret it...🙏🥲",textAlign:TextAlign.center, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                          SizedBox(height: 10,),
                          Text("You mean a lot to me.. more than I show sometimes❤️",textAlign:TextAlign.center, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                          SizedBox(height: 10,),
                          Text("And I hate seeing you upset beacuse of me..-🥺😞",textAlign:TextAlign.center, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                          SizedBox(height: 30,),
                           Container(
                            width: 140,
                            height: 50,
                             child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.pink,
                                          foregroundColor: Colors.black
                                        ),
                                        onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return Next();
                                        },));
                                        
                                      }, child: Center(child: Text("Next❤️",textAlign: TextAlign.center,style: TextStyle(fontSize: 21),))),
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