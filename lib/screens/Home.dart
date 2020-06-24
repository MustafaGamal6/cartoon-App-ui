
import 'package:cartonapp/screens/detailpage.dart';
import 'package:flutter/material.dart';
import 'package:cartonapp/model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 // var height = MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withBlue(50),
                        Color(0xFFB40A1B).withBlue(60),
                      //  Color(0xFF460000),
                       Color(0xFFEAE6E1)
                      ]
                  ) 
            ),
          ),
          
          Positioned(
            top: 44.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/11,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("gumao." ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 18.0,),

                  Container(
                    width: 40.0,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.redAccent
                    ),
                    child: Center(
                      child: Icon(Icons.search , size: 30, color: Colors.white,),
                    ),
                  )
                ],
              ),
            )
            ),

            /* Swipper section */

            Positioned(
              top:MediaQuery.of(context).size.height/5,         // 140
              child: Container(
                padding: EdgeInsets.only(bottom: 30.0),
                width:MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.4,
             //  color: Colors.blue,
               child:Center(
                 child: Swiper(
                   pagination: SwiperPagination(
                     builder: DotSwiperPaginationBuilder(
                       color: Colors.white,
                       activeColor: Colors.red,
                       activeSize: 13.0,
                       space: 5.0
                     )
                   ),
                 itemCount:carddetails.length,
                 layout: SwiperLayout.STACK,
                itemWidth:  MediaQuery.of(context).size.width/1.3,
           //      itemHeight: 200,
                 itemBuilder: (context , i){
                   return GestureDetector(
                     onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                   builder: (_) => Detail(mydetails: carddetails[i]),
                  ),
                   ),
                     
                          child: Stack(
                       children: <Widget>[
                         Container(
                           margin: EdgeInsets.only(top: 100 , left: 16.0, ),
                           padding: EdgeInsets.only(left: 20.0, ),
                           height: MediaQuery.of(context).size.height/2.25,
                           width: MediaQuery.of(context).size.width/1.2,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20.0),
                             color: Colors.white,
                           ),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               SizedBox(height: MediaQuery.of(context).size.height/4),  //height: 180.0
                               Container(
                                 width: 60,
                                 height: 40,
                                 decoration: BoxDecoration(
                                   borderRadius:BorderRadius.circular(20.0),
                                   color: Colors.red
                                 ),
                                 child: Center(
                                   child: Text("${carddetails[i].rate}",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 22,
                                   fontWeight: FontWeight.bold
                                 ),
                                 ),
                                 )
                               ),
                       //        Text("Bird Red" , style: TextStyle(color: Colors.black ,
                         //      fontWeight: FontWeight.bold , fontSize: 20.0),),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: <Widget>[
                                   Text(
                                     carddetails[i].name,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 30
                                     ),
                                   ),
                                   SizedBox(width: 10.0),  // 10.0
                                   Text("#" , style: TextStyle(
                                     color: Colors.black.withOpacity(.3),
                                     fontSize: 33,
                                     fontWeight: FontWeight.bold
                                   ),),
                                   Text(
                                     "${carddetails[i].number}",
                                     style: TextStyle(
                                       color: Colors.black.withOpacity(.3),
                                       fontSize: 70,
                                       fontWeight: FontWeight.bold
                                     ),
                                   )
                                 ],
                               )


                             ],
                           ),
                         ),
                         Positioned(
                           left: 40.0,
                           child: Hero(
                             tag: carddetails[i].imgurl, 
                             child: Image.asset(
                             carddetails[i].imgurl,
                             scale: 2.3,
                           )
                             )
                         )
                       ],
                     ),
                   );
                 },
               ),
               )

              
              )
              ),
            
              Positioned(
                bottom: 0.0,
                child: Container(
                  padding: EdgeInsets.only(left: 9.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/9.4,
              //    color: Colors.green,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                    width: MediaQuery.of(context).size.width/2.5,
                    height: height/15,
                    decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.0),
                          color: Colors.black.withOpacity(.8)
                        ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.scatter_plot , color: Colors.white,),
                        Text("Explore" , style:TextStyle(
                         
                          color: Colors.white,
                          fontSize: 17
                        ),)
                      ],
                    ),
                    )
                  ),
                  Icon(Icons.favorite_border , color: Colors.white,size: 30,),
                  Icon(Icons.perm_identity , color: Colors.white,size: 36,)
                    ],
                  )
                  
                )
                ),
                
            
        ],
      )
      
    );
  }
}


