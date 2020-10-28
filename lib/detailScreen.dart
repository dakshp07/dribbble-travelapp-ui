import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Column(
        children: [
          new Stack(
            children: [
              new ClipRRect(
                child: new Image.asset("assets/images/venice.jpg",height: 450,width: 720,fit: BoxFit.cover,),
                borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 60),
                child: new Row(
                  children: [
                    new IconButton(icon: new Icon(Icons.arrow_back_rounded,size: 30,color: Colors.black,), onPressed: (){Navigator.pop(context);}),
                    new Padding(padding: const EdgeInsets.symmetric(horizontal: 130),),
                    new Icon(Icons.search,size: 30,color: Colors.black,),
                    new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                    new Icon(Icons.sort,size: 30,color: Colors.black,)
                  ],
                ),
              ),
              new Column(
                  children: [
                    new Padding(padding: const EdgeInsets.only(top: 340)),
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                        new Text("Venice",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    new Row(
                      children: [
                        new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                        new Icon(Icons.near_me,color: Colors.grey[400],size: 30,),
                        new Text(" Italy",style: TextStyle(fontSize: 30,color: Colors.grey[400]),),
                      ],
                    )
                  ],
                ),
            ],
          ),
          new Padding(padding: const EdgeInsets.only(top: 20),),
          new SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: new Container(
              padding: const EdgeInsets.all(5),
              child: new Column(
              children: [
                new Card(
                  color: Colors.white,
                  shape : new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  elevation: 10,
                  shadowColor: Colors.grey[300],
                  child: new Row(
                    children: [
                      new ClipRRect(
                        child: new Image.asset("assets/images/stmarksbasilica.jpg",width: 130,height: 180,fit: BoxFit.fitHeight,),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      new Row(
                        children: [
                          new Column(
                            children: [
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text("St.Marks",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text("Basilica",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 5)),
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Text("Sightseeing Tour",style: TextStyle(fontSize: 15,color: Colors.grey[600]),)
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 5)),
                              new Row(
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Text("⭐⭐⭐⭐⭐",style: TextStyle(fontSize: 15,color: Colors.yellow[800]),),
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 10)),
                              new Row(
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    padding: const EdgeInsets.all(3),
                                    height: 30,
                                    width: 80,
                                    child: new Text("9:00 am",style: TextStyle(fontSize: 18,color: Colors.black),),
                                  ),
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                                  new Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    padding: const EdgeInsets.all(3),
                                    height: 30,
                                    width: 82,
                                    child: new Text("10:00 am",style: TextStyle(fontSize: 18,color: Colors.black),),
                                  )
                                ],
                              ),
                            ],
                          ),
                          new Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
                          new Column(
                            children: [
                              new Text("\$30",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                              new Text("per pax",style: TextStyle(fontSize: 15,color: Colors.grey[600]),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                new Padding(padding: const EdgeInsets.only(top: 10)),
                new Card(
                  color: Colors.white,
                  shape : new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  elevation: 10,
                  shadowColor: Colors.grey[300],
                  child: new Row(
                    children: [
                      new ClipRRect(
                        child: new Image.asset("assets/images/gondola.jpg",width: 130,height: 180,fit: BoxFit.fitHeight,),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      new Row(
                        children: [
                          new Column(
                            children: [
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text("Walking Tour",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text("gondola ride",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 5)),
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Text("Sightseeing Tour",style: TextStyle(fontSize: 15,color: Colors.grey[600]),)
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 5)),
                              new Row(
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Text("⭐⭐⭐⭐⭐",style: TextStyle(fontSize: 15,color: Colors.yellow[800]),),
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 10)),
                              new Row(
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    padding: const EdgeInsets.all(3),
                                    height: 30,
                                    width: 80,
                                    child: new Text("9:00 am",style: TextStyle(fontSize: 18,color: Colors.black),),
                                  ),
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                                  new Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    padding: const EdgeInsets.all(3),
                                    height: 30,
                                    width: 82,
                                    child: new Text("10:00 am",style: TextStyle(fontSize: 18,color: Colors.black),),
                                  )
                                ],
                              ),
                            ],
                          ),
                          new Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
                          new Column(
                            children: [
                              new Text("\$210",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                              new Text("per pax",style: TextStyle(fontSize: 15,color: Colors.grey[600]),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                new Padding(padding: const EdgeInsets.only(top: 10)),
                new Card(
                  color: Colors.white,
                  shape : new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  elevation: 10,
                  shadowColor: Colors.grey[300],
                  child: new Row(
                    children: [
                      new ClipRRect(
                        child: new Image.asset("assets/images/murano.jpg",width: 130,height: 180,fit: BoxFit.fitHeight,),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      new Row(
                        children: [
                          new Column(
                            children: [
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text("Murano and",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text("Burano Tour",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 5)),
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Text("Sightseeing Tour",style: TextStyle(fontSize: 15,color: Colors.grey[600]),)
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 5)),
                              new Row(
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Text("⭐⭐⭐⭐⭐",style: TextStyle(fontSize: 15,color: Colors.yellow[800]),),
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 10)),
                              new Row(
                                children: [
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 2),),
                                  new Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    padding: const EdgeInsets.all(3),
                                    height: 30,
                                    width: 80,
                                    child: new Text("9:00 am",style: TextStyle(fontSize: 18,color: Colors.black),),
                                  ),
                                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                                  new Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    padding: const EdgeInsets.all(3),
                                    height: 30,
                                    width: 82,
                                    child: new Text("10:00 am",style: TextStyle(fontSize: 18,color: Colors.black),),
                                  )
                                ],
                              ),
                            ],
                          ),
                          new Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
                          new Column(
                            children: [
                              new Text("\$125",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                              new Text("per pax",style: TextStyle(fontSize: 15,color: Colors.grey[600]),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            )
          )
        ],
      ),
      )
    );
  }
}