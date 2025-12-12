import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    int itemsNum = 6;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list, color: Colors.white),
          backgroundColor: Color(0xFFFF223B5A),
          title: Text("AppBar", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(110),
            child: Column(
              children: [
                /// text form field
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 70,
                  color: Color(0xFFFF223B5A),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Text: \"Search....\"",
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),

                /// tab bar
                Container(
                  color: Colors.white,
                  child: TabBar(
                    indicatorColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 4,
                    tabs: [
                      Tab(
                        height: 30,
                        child: Text("Featured", style: TextStyle(fontSize: 18)),
                      ),
                      Tab(
                        height: 30,
                        child: Text(
                          "Categories",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Tab(
                        height: 30,
                        child: Text("Trending", style: TextStyle(fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.grey[200],
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CustomScrolView", style: TextStyle(fontSize: 18)),

                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CustomScrolView", style: TextStyle(fontSize: 18)),
                        Container(
                          height: 270,
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.8,
                                ),
                            itemCount: itemsNum,
                            itemBuilder:
                                (context, itemsNum) => Card(
                                  child: Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      spacing: 5,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "lib/images/bread.jpg",
                                          fit: BoxFit.cover,
                                          width: 200,
                                          height: 120,
                                        ),
                                        Text("Text \"Item Name\""),
                                        Text("Text \"Price\""),
                                        Row(
                                          spacing: 55,
                                          children: [
                                            Text("IconButton"),
                                            Icon(Icons.favorite_border),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: Colors.white,
                    height: 80,
                    child: ListView(
                      itemExtent: 80,
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundImage: AssetImage("lib/images/bread.jpg"),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("lib/images/bread.jpg"),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("lib/images/bread.jpg"),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("lib/images/bread.jpg"),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("lib/images/bread.jpg"),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("lib/images/bread.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(child: Text("Categories")),
            Center(child: Text("Trending")),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 25,
          currentIndex: 0,
          selectedIconTheme: IconThemeData(color: Colors.blue),
          unselectedIconTheme: IconThemeData(color: Colors.orange),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.orange,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_sharp),
              label: "Cart",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
