import 'package:dribbble_travelapp_ui/detailScreen.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomAppBar(
        color: Colors.white,
        child: new SizedBox(
          height: 65,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new Icon(Icons.search,color: Colors.blue[400],size: 35,),
              new Icon(Icons.where_to_vote,size: 35,color: Colors.grey[400],),
              new Icon(Icons.face_retouching_natural,size: 35,color: Colors.grey[400],),
            ],
          ),
        ),
      ),
      body : new Container(
        padding : const EdgeInsets.only(top : 80),
        child : new Container(
          padding : const EdgeInsets.all(10),
          child : new SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: new Column(
            children : [
              new Row(
                crossAxisAlignment : CrossAxisAlignment.start,
                children: [
                  new Text("What would you like ",style: TextStyle(fontSize: 33,color:Colors.black,fontWeight: FontWeight.bold)),
                ],
              ),
              new Row(
                crossAxisAlignment : CrossAxisAlignment.start,
                children : [
                  new Text("to find?",style: TextStyle(fontSize: 33,color:Colors.black,fontWeight: FontWeight.bold)),
                ]
              ),
              new Padding(padding: const EdgeInsets.only(top: 25),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue[100],
                    child: new Icon(Icons.flight_takeoff_rounded,color: Colors.blue[400],size: 35,),
                  ),
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
                  new CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[200],
                    child: new Icon(Icons.directions_car_rounded,color: Colors.grey[400],size: 35,),
                  ),
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
                  new CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[200],
                    child: new Icon(Icons.local_hotel_rounded,color: Colors.grey[400],size: 35,),
                  ),
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
                  new CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[200],
                    child: new Icon(Icons.moped_rounded,color: Colors.grey[400],size: 35,),
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 25),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text("Top Destinations",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),
                  new Text("See All",style: TextStyle(fontSize: 15,color: Colors.blue[400]),)
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20),),
              new SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Stack(
                    children: [
                      new Container(
                        margin: const EdgeInsets.only(top: 100),
                        height: 180,
                        width: 250,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 20
                          )],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          )
                        ),
                        child: new Column(
                          children: [
                            new Padding(padding: const EdgeInsets.only(top: 90)),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                                new Text("125 activites",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            new Padding(padding: const EdgeInsets.only(top: 10)),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                                new Text("Enjoy best trips from top",style: TextStyle(fontSize: 18,color: Colors.grey[400],),),
                              ],
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                                new Text("travel agencies at best prices",style: TextStyle(fontSize: 18,color: Colors.grey[400],),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      new Stack(
                        children: [
                        new Container(
                        alignment: Alignment.center,
                        height: 180,
                        width: 250,
                        child: new GestureDetector(
                          child: new ClipRRect(
                        child: new Image.asset("assets/images/venice.jpg",height: 350,width: 230,fit: BoxFit.fitHeight,),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetailScreen()));
                      },
                        )
                      ),
                      new Container(
                        height: 200,
                        width: 250,
                        alignment: Alignment.topLeft,
                        child: new Column(
                          children: [
                            new Padding(padding: const EdgeInsets.only(top: 120)),
                            new Row(
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                                new Text("Venice",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            new Row(
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                                new Icon(Icons.near_me,color: Colors.grey[300],size: 20,),
                                new Text(" Italy",style: TextStyle(fontSize: 20,color: Colors.grey[300]),)
                              ],
                            )
                          ],
                        ),
                      )
                        ],
                      )
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                  new Stack(
                    children: [
                      new Container(
                        margin: const EdgeInsets.only(top: 100),
                        height: 180,
                        width: 250,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 20
                          )],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          )
                        ),
                        child: new Column(
                          children: [
                            new Padding(padding: const EdgeInsets.only(top: 90)),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                                new Text("98 activites",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            new Padding(padding: const EdgeInsets.only(top: 10)),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                                new Text("Unique and custom from top",style: TextStyle(fontSize: 18,color: Colors.grey[400],),),
                              ],
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                                new Text("organised by local best prices",style: TextStyle(fontSize: 18,color: Colors.grey[400],),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      new Stack(
                        children: [
                        new Container(
                        alignment: Alignment.center,
                        height: 180,
                        width: 250,
                        child: new ClipRRect(
                        child: new Image.asset("assets/images/paris.jpg",height: 350,width: 230,fit: BoxFit.fitHeight,),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      ),
                      new Container(
                        height: 200,
                        width: 250,
                        alignment: Alignment.topLeft,
                        child: new Column(
                          children: [
                            new Padding(padding: const EdgeInsets.only(top: 120)),
                            new Row(
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                                new Text("Paris",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            new Row(
                              children: [
                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                                new Icon(Icons.near_me,color: Colors.grey[300],size: 20,),
                                new Text(" France",style: TextStyle(fontSize: 20,color: Colors.grey[300]),)
                              ],
                            )
                          ],
                        ),
                      )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text("Exclusive Hotels",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),
                  new Text("See All",style: TextStyle(fontSize: 15,color: Colors.blue[400]),)
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20)),
              new ClipRRect(
                child: new Image.asset("assets/images/hotel1.jpg",height: 200,width: 400,fit: BoxFit.fitWidth,),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              )
            ]
          ),
          )
        )
      )
    );
  }
}