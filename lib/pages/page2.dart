import 'package:aspen/pages/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('    Explore'),
                SizedBox(
                  width: 200,
                ),
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.blue,
                ),
                Text('  Aspen, USA  '),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.blue,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Aspen',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[50]),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: Colors.grey,
                      ),
                      Text(
                        '  Find things to do',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildContainer(text: 'Location'),
                  buildContainer(text: 'Hotels'),
                  buildContainer(text: 'Food'),
                  buildContainer(text: 'Adventure'),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  '   Popular',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 200,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  popularContainer(
                    image: AssetImage('asses/images/allay 992.png'),
                    child1: Text(
                      'Allay Palace',
                      style: TextStyle(color: Colors.white),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  popularContainer(
                    image: AssetImage('asses/images/Rectangle 994.png'),
                    child1: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page3(),
                            ));
                      },
                      child: Text(
                        'Coeurdes Alpes',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  popularContainer(
                    image: AssetImage('asses/images/allay 992.png'),
                    child1: Text(
                      'Allay Palace',
                      style: TextStyle(color: Colors.white),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  popularContainer(
                    image: AssetImage('asses/images/allay 992.png'),
                    child1: Text(
                      'Allay Palace',
                      style: TextStyle(color: Colors.white),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  popularContainer(
                    image: AssetImage('asses/images/allay 992.png'),
                    child1: Text(
                      'Allay Palace',
                      style: TextStyle(color: Colors.white),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ),
          SizedBox(height: 10,),
          Container(    alignment: Alignment.centerLeft,child:
          Text('  Recommened',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
            textAlign:TextAlign.start ,),
          ),
            SizedBox(height: 10,),
            SingleChildScrollView(

              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      recomment(image: AssetImage('asses/images/Rectangle 992 (1).png',
                      ),text: '  4N/5D'),
                      Text('Explore Aspen',style: TextStyle(fontSize: 25),),
                    ],
                  ),
                  SizedBox(width: 10,),

                  Column(
                    children: [
                      recomment(image: AssetImage('asses/images/Rectangle 992 (2).png',
                      ),text: '  2N/3D'),
                      Text('Luxurious Aspen',style: TextStyle(fontSize: 25),),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      recomment(image: AssetImage('asses/images/Rectangle 992 (2).png',
                      ),text: '  4N/5D'),
                      Text('Luxurious Aspen',style: TextStyle(fontSize: 25),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container recomment({required ImageProvider image,
    required String text,}) {
    return Container( height: 170,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image:  image,
                      fit: BoxFit.cover,
                    ),
                  ),
                 child: Stack(
                   children: [
                     Positioned(bottom: 10, right: 10, child:Container(width: 60,height: 20,
                   decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),
                   child: Text(text,style: TextStyle(color: Colors.white),),
                 ), ),
                   ],
                 ),
                );
  }

  Container popularContainer(
      {required ImageProvider image,
      required Widget child1,
      required Widget child2}) {
    return Container(
      //padding: EdgeInsets.all(16.0),
      //margin: EdgeInsets.all(20.0),
      height: 210,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 48,
            left: 10,
            child: Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Center(child: child1),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 10,
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 5),
                  Text(
                    '4.1',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 10, right: 10, child: child2),
        ],
      ),
    );
  }

  Container buildContainer({required String text}) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(10.0),
      height: 60,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
