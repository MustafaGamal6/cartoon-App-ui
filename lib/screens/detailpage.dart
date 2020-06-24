
import 'package:cartonapp/model.dart';
import 'package:flutter/material.dart';
//import 'package:cartonapp/model.dart';

class Detail extends StatefulWidget {
  final CardDetails mydetails;
  Detail({this.mydetails});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 17.0),
        padding: EdgeInsets.only(top: 30),   //30
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
           Container(
             width: double.infinity,
             height: MediaQuery.of(context).size.height/2.5,
             child:  Hero(
               tag: widget.mydetails.imgurl, 
               child:Image.asset(
             // carddetails[2].imgurl,
             widget.mydetails.imgurl,
              scale: 2,
            ),
               )
           ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.red),
                child: Center(
                  child: Text(
                   " ${widget.mydetails.rate}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                SizedBox(height: 10.0,),
                Container(
                  padding: EdgeInsets.only(left: 22.0 , top: 5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/ 20,   //40
         //         color: Colors.blue,
                  child: Text(
                    widget.mydetails.name ,
                style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontSize: 23,
                ),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(widget.mydetails.name ,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                ),
                Text("#" , style: TextStyle(fontSize: 26 ,
                 fontWeight: FontWeight.bold , color: Colors.black.withOpacity(.4)),),
                Text("${widget.mydetails.number}" ,
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontFamily:"Avener",
                  fontSize: 60,
                  fontWeight: FontWeight.bold
                ),
                ) ,
                
                
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height/200),  //10
                Divider(
                  indent: 20.0,
                  thickness:.3 ,
                  color: Colors.black.withOpacity(.5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("SIZE" , style: 
                        TextStyle(
                          color: Colors.black,
                          fontSize: 16
                        )
                        ,),
                        Text(
                          widget.mydetails.size,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("POWER" , style: 
                        TextStyle(
                          color: Colors.black,
                          fontSize: 16
                        )
                        ,),
                        Text(
                         widget.mydetails.power,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0
                          ),
                        )
                      ],
                    )
                  ],
                ),SizedBox(height:MediaQuery.of(context).size.height/100),   //14
                Divider(
                  indent: 20.0,
                  thickness:.3 ,
                  color: Colors.black.withOpacity(.5),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/6,
              //    color: Colors.blue,
                    child: ListView.builder(
                      itemCount:widget.mydetails.posters.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context , p){
                        return Container(
                          margin: EdgeInsets.only(left: 20.0),
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          color: Colors.red,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(widget.mydetails.posters[p])
                          )
                        ),
                      );
                      }
                      ),
                )











        /*        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(width: 10.0,),
                    Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: MediaQuery.of(context).size.height/6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17.0),
                        color: Colors.red,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/clash.png")
                        )
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: MediaQuery.of(context).size.height/6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17.0),
                        color: Colors.red,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/clash2.png")
                        )
                      ),
                    )
                  ],
                )   */
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
