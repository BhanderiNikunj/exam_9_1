import 'package:exam1/DetailPage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Images1 = [
    "Assets/Images/1.png",
    "Assets/Images/2.png",
    "Assets/Images/1.png",
    "Assets/Images/2.png",
    "Assets/Images/1.png",
    "Assets/Images/2.png",
    "Assets/Images/1.png",
    "Assets/Images/2.png",
  ];
  List Name = [
    "Car",
    "Gaming Headset",
    "Car",
    "Gaming Headset",
    "Car",
    "Gaming Headset",
    "Car",
    "Gaming Headset",
  ];
  List Price=[
    "12.50\$",
    "80.50\$",
    "12.50\$",
    "80.50\$",
    "12.50\$",
    "80.50\$",
    "12.50\$",
    "80.50\$",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.list),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Find ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "Find\n",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "Desire ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "Product\n",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(
                    Icons.notifications_active,
                    color: Colors.orange.shade900,
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: "Search Item...",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    )),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade900,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Item"),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.orange.shade900),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Images1.asMap()
                    .entries
                    .map((e) => image(Images1[e.key], Name[e.key],Price[e.key]))
                    .toList(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Images1.asMap()
                    .entries
                    .map((e) => image1(Images1[e.key], Name[e.key],Price[e.key]))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget image(String images, String name,String price) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(images,name,price),));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2,2)
                ),
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-2,-2)
                ),
              ]
          ),
          child: Column(
            children: [
              Image.asset(
                "$images",
                height: 75,
                width: 75,
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text("$name",style: TextStyle(fontSize: 20)),
                    SizedBox(height: 20,),
                    Text("$price",style: TextStyle(fontSize: 15,color: Colors.orange.shade900))
                  ],
                ),
              ),
              SizedBox(height: 19,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 25,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade900,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      )
                  ),
                  child: Icon(Icons.add,size: 15,color: Colors.white,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget image1(String images1,String name,String price) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(images1,name,price),));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(2,2)
              ),
              BoxShadow(
                color: Colors.black12,
                offset: Offset(-2,-2)
              ),
            ]
          ),
          child: Column(
            children: [
              Image.asset(
                "$images1",
                height: 75,
                width: 75,
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text("$name",style: TextStyle(fontSize: 20)),
                    SizedBox(height: 20,),
                    Text("$price",style: TextStyle(fontSize: 15,color: Colors.orange.shade900))
                  ],
                ),
              ),
              SizedBox(height: 19,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 25,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade900,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    )
                  ),
                  child: Icon(Icons.add,size: 15,color: Colors.white,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
