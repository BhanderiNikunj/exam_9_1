import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  String? images, name, price;

  Detail(this.images, this.name, this.price);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.black12,
              child: Image.asset(
                "${widget.images}",
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.name}",
                  style: TextStyle(fontSize: 30),
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.orange.shade900,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "${widget.price}",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 150,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Expanded(
                      child: Container(
                        height: 50,
                        width: 200,
                        color: Colors.green.shade700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Expanded(
                      child: Container(
                        height: 50,
                        width: 200,
                        color: Colors.orange.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
