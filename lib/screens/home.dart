import 'package:ecommerce/provider/provider.dart';
import 'package:ecommerce/screens/items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/models/data.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  List<String> items = ["All", "Mobiles", "Speakers", "Headsets", "Computer"];

  int curr = 0;
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ChangeNotifierProvider(
          create: (context) => testProvider(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Hello Abdirahman",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      child: Icon(Icons.card_travel),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Text(
                    "what are you buying Today",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding: EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white54,
                          spreadRadius: 1,
                          blurRadius: 20,
                          blurStyle: BlurStyle.normal,
                        ),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'Search product',
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ListView.builder(
                          itemCount: items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                curr = index;
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                margin: EdgeInsets.all(5),
                                width: 80,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: curr == index
                                        ? Colors.white70
                                        : Colors.white54,
                                    borderRadius: curr == index
                                        ? BorderRadius.circular(15)
                                        : BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 2,
                                        color: Colors.black26,
                                      )
                                    ]),
                                child: Center(
                                    child: Text(
                                  items[index],
                                  style: TextStyle(fontSize: 16),
                                )),
                              ),
                            );
                          }),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Trending sales",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "see All",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.lightBlue,
                            ),
                          ),
                        )
                      ],
                    ),
                    GridView.count(
                        crossAxisCount: 2,
                        padding: EdgeInsets.all(10),
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 0.8,
                        shrinkWrap: true,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: List.generate(getdata.length, (index) {
                          return Container(
                            padding: EdgeInsets.all(8),
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 10),
                                blurRadius: 20,
                                color: Colors.grey.shade300,
                              )
                            ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 170,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Itemspage()));
                                    },
                                    child: Image.asset(
                                      getdata[index].image,
                                      width: 200,
                                      height: 150,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  getdata[index].name,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      getdata[index].price.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(
                                        CupertinoIcons.plus,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
