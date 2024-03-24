import 'package:flutter/material.dart';
import 'package:flutter_application_1/peaple.dart';
import 'package:flutter_application_1/var.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(75, 142, 190, 1),
        title: const Center(
          child: Text('Мои друзья',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
          ),
          ),
        ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children:  <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                   children:  <Widget>[
               SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
             // color: Colors.black,
              child: Center(
                child:
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: const TextField(
                    textAlign: TextAlign.center ,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 24
                ),
                    decoration: InputDecoration(             
                        border: OutlineInputBorder(), hintText: 'Поиск',                    
                        ),
                  ),
                ),
              ),
            ),
             SizedBox(height: 10),

                Container(
              height: MediaQuery.of(context).size.height * 0.72,
              width: MediaQuery.of(context).size.width * 0.98,
              //color: Colors.amber,
              child:
                  Center(
                    child: Container( 
                      width: MediaQuery.of(context).size.width * 1,
                      child: Container(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ListView.builder(
                            itemCount: people.length,
                            itemBuilder: (BuildContext context, index) {
                              return Human(index: index);
                            }
                            )
                            )
                            )
                  ),
            ),
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.98,
              //color: Colors.amber,
             child: Row(children:<Widget> [
              Container(
                width: MediaQuery.of(context).size.width * 0.64,
                //color: Colors.black,
                ),
                Container(
                width: MediaQuery.of(context).size.width * 0.34,
                decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(50),
        color: Colors.blue,
      ),
      child: Row(
        children: <Widget>[
          
          Container(
             width: MediaQuery.of(context).size.width * 0.1655,
              decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(50),
        color: Colors.blue,
      ),
      child: Center(
        child:  TextButton(
        child:  Icon(
                Icons.settings,
                color: Colors.white,
                ),
                 onPressed: () => {  Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) => First()),

                    )
                     },
        )
         ),
          ),
           Container(
             width: MediaQuery.of(context).size.width * 0.005,
              //color: Colors.black,
              child: Center(
                child: Container(
                   height: MediaQuery.of(context).size.height * 0.03,
                   color: Colors.white,
                ),
              ),
     
           ),
          Container(
             width: MediaQuery.of(context).size.width * 0.1655,
              decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(50),
        color: Colors.blue,
      ),
      child: Center(
        child:  TextButton(
        child:  Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
                ),
                 onPressed: () => {  Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) => First()),

                    )
                     },
        )
         ),
          )
        ],
      ),
                )
             ],)
            )


            ],
          ),
        )
            ]
          )


    )
    );
  }
}