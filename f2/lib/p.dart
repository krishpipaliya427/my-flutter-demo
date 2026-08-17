// import 'package:f2/next2.dart';
import 'package:f2/forgive.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:flutter/rendering.dart';


class P extends StatefulWidget{
  @override
  State<P> createState() => _pState();
}

class _pState extends State<P> {
  
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
                width: 600,
                height: 620,
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text("My Promises To You Meri Jann😘",textAlign: TextAlign.center, style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 252, 77, 135)),),
                            ),
                             SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(21),
                                child: Container(
                                  color: Color(0xffffe9ec),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 550,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                            child: ExpansionTile(title: Center(
                                              child: Text("Tap To Revale💖",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                                                                ),
                                            ),
                                          backgroundColor: Color(0xfffFC8EAC),
                                          collapsedBackgroundColor: Colors.white,
                                          children: [
                                            Text("I promise to learn from my mistakes and love you better. 💖",style: TextStyle(fontSize: 16,color: Colors.black87),)
                                          ],
                                            )
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          width: 550,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                            child: ExpansionTile(title: Center(
                                              child: Text("Tap To Revale💖",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                                                                ),
                                            ),
                                          backgroundColor: Color(0xfffFC8EAC),
                                          collapsedBackgroundColor: Colors.white,
                                          children: [
                                            Text("I promise to earn back your trust every day. 🤍",style: TextStyle(fontSize: 16,color: Colors.black87),)
                                          ],
                                            )
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          width: 550,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                            child: ExpansionTile(title: Center(
                                              child: Text("Tap To Revale💖",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                                                                ),
                                            ),
                                          backgroundColor: Color(0xfffFC8EAC),
                                          collapsedBackgroundColor: Colors.white,
                                          children: [
                                            Text("I promise to love you better than before. 🫶",style: TextStyle(fontSize: 16,color: Colors.black87),)
                                          ],
                                            )
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          width: 550,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                            child: ExpansionTile(title: Center(
                                              child: Text("Tap To Revale💖",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                                                                ),
                                            ),
                                          backgroundColor: Color(0xfffFC8EAC),
                                          collapsedBackgroundColor: Colors.white,
                                          children: [
                                            Text("I'm sorry, and I promise I'll do better.❤️",style: TextStyle(fontSize: 16,color: Colors.black87),)
                                          ],
                                            )
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          width: 550,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                            child: ExpansionTile(title: Center(
                                              child: Text("Tap To Revale💖",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                                                                ),
                                            ),
                                          backgroundColor: Color(0xfffFC8EAC),
                                          collapsedBackgroundColor: Colors.white,
                                          children: [
                                            Text("I promise to love you a little more every single day. ❤️",style: TextStyle(fontSize: 16,color: Colors.black87),)
                                          ],
                                            )
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          width: 550,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                            child: ExpansionTile(title: Center(
                                              child: Text("Tap To Revale💖",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                                                                ),
                                            ),
                                          backgroundColor: Color(0xfffFC8EAC),
                                          collapsedBackgroundColor: Colors.white,
                                          children: [
                                            Text("I promise to respect your feelings. 🌸",style: TextStyle(fontSize: 16,color: Colors.black87),)
                                          ],
                                            )
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          width: 550,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                            child: ExpansionTile(title: Center(
                                              child: Text("Tap To Revale💖",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                                                                ),
                                            ),
                                          backgroundColor: Color(0xfffFC8EAC),
                                          collapsedBackgroundColor: Colors.white,
                                          children: [
                                            Text("I promise to choose you, again and again. ❤️",style: TextStyle(fontSize: 16,color: Colors.black87),)
                                          ],
                                            )
                                          ),
                                        ),
                                        SizedBox(height: 40,),
                                        Text("I LOVE U😘",textAlign: TextAlign.center,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 30,),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 30),
                                          child: Container(
                                            width: 140,
                                            height: 50,
                                           
                                              
                                                 child: ElevatedButton(
                                                   style: ElevatedButton.styleFrom(
                                                     backgroundColor: Color(0xffE11584),
                                                      foregroundColor: Colors.black
                                                      ),
                                                  onPressed: (){
                                                           Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                             return Forgive();
                                                           },));                             
                                                  }, child: Text("Next",style: TextStyle(fontSize: 21),)),
                                               ),
                                        ),
                                            
                                          
                                        
                                      ],
                                    ),
                                    
                                  ),
                                
                           
                                )
                              )
                              
                            ),
                          ]
                        ),
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
