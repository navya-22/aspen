import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 320,
              width:MediaQuery.of(context).size.width-40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('asses/images/Rectangle 990.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child:Container(decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                      child:
                    IconButton(onPressed: () {
                     Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black26,)),
                    ),
                  ),
        
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: CircleAvatar(
                      foregroundColor: Colors.white,
                      child:
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),),
                  ),
                ],
              ),
            ),
           SizedBox(height: 20,),
           Column(
             children: [
               Row(children: [
           Text('  Coeurdes Alpes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
             textAlign: TextAlign.start,),
               SizedBox(width: 100,),
                 Text('Show map',style: TextStyle(color: Colors.blue),),
               ],),
            Row(children: [
              SizedBox(width: 10,),
              Icon(Icons.star,color: Colors.yellow,),
            Text('4.5(355 Reviews)')
            ],),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 20.0),
                 child: Text('        Aspen is as close as one can get to a storybook '
                     'alpine twon in America.  the choose-your-own-'
                     'asventure possibilities-skiing,hiking,'
                     'dining shopping and...',style: TextStyle(fontSize: 20),),
               ),
               Row(
                 children: [SizedBox(width: 20,),
               Text('Read more',style: TextStyle(color: Colors.blue),),
                   Icon(Icons.keyboard_arrow_down,color: Colors.blue,),
                 ],),
            SizedBox(height: 20,),

               Container(
                 alignment: Alignment.centerLeft,
                   child: Text('  Facilities',
                     style: TextStyle(fontSize: 30,
                         fontWeight: FontWeight.bold),)),
               SizedBox(height: 13,),
               SingleChildScrollView(scrollDirection: Axis.horizontal,
                 child: Row(
                 children: [
                   SizedBox(width: 10,),
                   facilityContainer(icon:Icons.sensors_outlined,text: '1 Heater' ),
                   SizedBox(width: 30,),
                   facilityContainer(icon:Icons.dinner_dining,text: 'Dinner' ),
                   SizedBox(width: 30,),
                   facilityContainer(icon:Icons.bathtub_outlined,text: '1 Tub' ),
                   SizedBox(width: 30,),
                   facilityContainer(icon:Icons.pool,text: 'Pool' ),
                 ],
               ),),
               SizedBox(height: 40,),

               Row(
                 children: [
                   SizedBox(width: 10,),
                 Container(
                   height: 80,
                   width: 80,
                   child: Column(
                     children: [
                       Text('Price',style: TextStyle(fontWeight: FontWeight.bold),),
                       Row(children: [
                         Icon(Icons.attach_money_sharp,color: Colors.green,size: 35,),
                       Text('199', style: TextStyle(color: Colors.green,fontSize: 25,
                           fontWeight: FontWeight.bold),),],),
                     ],
                   ),
                 ),
                   SizedBox(width: 30,),
                   Container(
                     height: 60,
                     width: 290,
                     padding: EdgeInsets.all(16.0),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.blue,
                     ),
                     child:Row(children: [
                     Text('     Book Now  ',style: TextStyle(color: Colors.white,fontSize: 25),),
                     Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 30,)
                     ],),
                   ),
                 ],
               ),],),
          ],
        ),
      ),
    );
  }

  Container facilityContainer({required IconData icon,required String text }) {
    return Container(height: 80,width: 100,
                 padding: EdgeInsets.all(16.0),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.blue[50],
                 ),
                 child: Column(
                 children: [
                  Icon(icon ,color: Colors.grey,),
                   Text(text,style: TextStyle(color: Colors.grey),),
    ],),
    );
  }
}
