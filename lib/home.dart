import 'package:flutter/material.dart';
import 'detail.dart';



class GigsPage extends StatefulWidget {
  @override
  _GigsPageState createState() => _GigsPageState();
}

class _GigsPageState extends State<GigsPage> {
  @override
  void initState() {
    super.initState();
  }

  var gigs = [
    {},
    {},
    {},
    {},
    {},
    {},

  ];

  @overr
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('chose your course'),


      ),
      body: FlatButton(  onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
      },
        child: ListView.builder(
          itemCount: gigs.length,
          itemBuilder: (context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0),
              child: Card(
                child: Container(
                  height: 120,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            color: Colors.grey,

                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 120.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 10.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              size: 12.0,
                                              color: Colors.amber,
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 4.0),
                                              child: Text(
                                                gigs[index]['ratings'].toString(),
                                                style: TextStyle(
                                                  color: Colors.amber,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 4.0),
                                              child: Text(
                                                "(${gigs[index]['reviewCount']})",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width *
                                              0.35,

                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                                Row(

                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Course Name ",
                                      style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

