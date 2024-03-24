import 'package:flutter/material.dart';
import 'package:flutter_application_1/contact.dart';
import 'package:flutter_application_1/var.dart';

class Human extends StatelessWidget {
  Human({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(16),
        color: Color.fromRGBO(219, 216, 216, 1),
      ),
      margin: const EdgeInsets.only(bottom: 24, top: 8),
      height: MediaQuery.of(context).size.height * 0.097,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.2,
            child: Image.network(url),
            //color: Colors.amber,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.1,
            //color: Colors.black,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.4,
            //color: Colors.pink,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: const EdgeInsets.all(24),
                  child: Text(
                    "${people[index].name}",
                    style: const TextStyle(fontSize: 24),
                  ),
                  //color: Colors.purple,
                ),
              ],
            ),
          ),
            Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.1,
            //color: Colors.black,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
             //color: Colors.amber,
            ),
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.1,
            margin: const EdgeInsets.all(8),
            child: Center(
              child: IconButton(
                onPressed: () { Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) => Contact (index: index,)),
                );

                },
                icon: const Icon(
                  size: 30,
                  Icons.arrow_forward,
                  color: Colors.black
                  )
                  ),
            )
          ),
          
        ],
      ),
    );
  }
}