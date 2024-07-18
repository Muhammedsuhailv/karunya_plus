import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'details_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Karunya Plus"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Purchase"),
              Tab(text: "Balance"),
              Tab(text: "Report"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabOne(),
            Center(child: Text(" ")),
            Center(child: Text("")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff0E356D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content:
                      Container(
                          width: 350,
                          height: 300,
                          child: Column(
                        children: [
                          SizedBox(height: 10,),
                          SlideSwitcher(
                            children: [
                              Text('Purchase'),
                              Text('Balance'),
                            ],
                            containerColor:Color(0xffE4E4E4),
                            onSelect: (index) {},
                            containerHeight: 50,
                            containerWight: 160,
                          ),
                        ],
                      )),
                );
              },
            );
          },
          child: Icon(Icons.arrow_upward, color: Colors.white),
        ),

      ),
    );
  }
}

class TabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            color: Colors.white,
            child: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff395B8D),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Book", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE4E4E4),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Set"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE4E4E4),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Single"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Center(child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            children: [
                              Card(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                                  height: screenHeight * 0.2,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 35,),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              Column(
                                                children: [
                                                  Icon(Icons.bookmarks_outlined, color: Color(0xff395B8D)),
                                                  Text("Book")
                                                ],
                                              ),
                                              SizedBox(width: 40,),
                                              Dash(
                                                  direction: Axis.vertical,
                                                  length: 55,
                                                  dashLength: 5,
                                                  dashThickness: 2,
                                                  dashColor: Colors.grey),
                                              SizedBox(width: 70,),
                                              Text(Contents[index]['lotteryFno'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff88879C))),
                                              Text("   •  - - -  •   ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff88879C))),
                                              Text(Contents[index]['lotteryLno'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff88879C))),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 290),
                                        child: Container(
                                          child: Center(child: Text(Contents[index]['quantity'], style: TextStyle(fontSize: 12))),
                                          width: 100, height: 25, decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xffBBBBBB).withOpacity(0.5)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 85,
                                  top: -5,
                                  child: CircleAvatar(minRadius: 15, backgroundColor: Colors.white)),
                              Positioned(
                                  left: 85,
                                  top: 105,
                                  child: CircleAvatar(minRadius: 15, backgroundColor: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ));
                  },
                  itemCount: Contents.length,
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Center(child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            children: [
                              Card(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                                  height: screenHeight * 0.2,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 35,),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              Column(
                                                children: [
                                                  Icon(Icons.cases_outlined, color: Color(0xff395B8D)),
                                                  Text("Set")
                                                ],
                                              ),
                                              SizedBox(width: 40,),
                                              Dash(
                                                  direction: Axis.vertical,
                                                  length: 55,
                                                  dashLength: 5,
                                                  dashThickness: 2,
                                                  dashColor: Colors.grey),
                                              SizedBox(width: 70,),
                                              Text(setContents[index]['content'].toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Color(0xff88879C))),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 290),
                                        child: Container(
                                          child: Center(child: Text(setContents[index]['quantity'], style: TextStyle(fontSize: 12))),
                                          width: 100, height: 25, decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xffBBBBBB).withOpacity(0.5)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 85,
                                  top: -5,
                                  child: CircleAvatar(minRadius: 15, backgroundColor: Colors.white)),
                              Positioned(
                                  left: 85,
                                  top: 105,
                                  child: CircleAvatar(minRadius: 15, backgroundColor: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ));
                  },
                  itemCount: setContents.length,
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Center(child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            children: [
                              Card(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                                  height: screenHeight * 0.2,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 35,),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              Column(
                                                children: [
                                                  Icon(Icons.airplane_ticket_outlined, color: Color(0xff395B8D)),
                                                  Text("Single")
                                                ],
                                              ),
                                              SizedBox(width: 40,),
                                              const Dash(
                                                  direction: Axis.vertical,
                                                  length: 55,
                                                  dashLength: 5,
                                                  dashThickness: 2,
                                                  dashColor: Colors.grey),
                                              const SizedBox(width: 70,),
                                              Text(singleContents[index]['content'].toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Color(0xff88879C))),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 85,
                                  top: -5,
                                  child: CircleAvatar(minRadius: 15, backgroundColor: Colors.white)),
                              Positioned(
                                  left: 85,
                                  top: 105,
                                  child: CircleAvatar(minRadius: 15, backgroundColor: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ));
                  },
                  itemCount: singleContents.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
