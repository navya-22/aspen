import 'package:aspen/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'asses/images/Rectangle 988.png',
                  fit: BoxFit.fill, // Use BoxFit.cover to fill the container
                ),
              ),
              Positioned(
                top: 100,
                left: 80,
                child: Text(
                  'Aspen',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Hiatus',
                    fontSize: 140.0,
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                left: 20,
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'P l a n   y o u r',
                      style: TextStyle(fontSize: 25, color: Colors.white60),
                    ),
                    textRefact(text: 'L u x u r i o u s'),
                    textRefact(text: 'V a c a t i o n'),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width-40.0,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          //shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Page2(),
                                ));
                          },
                          child: const Text(
                            'Explore',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),


                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }

  Text textRefact({required String text}) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
