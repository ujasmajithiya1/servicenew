import 'package:flutter/material.dart';

class WorkshopHome extends StatelessWidget {
  final String title;

  const WorkshopHome({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5e5ab8),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      backgroundColor: Color(0xFF5e5ab8),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 32.0, left: 16.0, bottom: 16.0),
              child: Text(
                "Car Service",
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.timer_sharp),
                          Text("Express \nService")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.remove),
                          Text("Dent/Scratch \nRemoval")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.details),
                          Text("Interior \nDetailing")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.policy_outlined),
                          Text("Car \nPolish")
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.car_repair),
                          Text("Bumper \nRepainting")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.change_history),
                          Text("Oil Change \nPackage")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [Icon(Icons.spa), Text("Complete \nCar Spa")],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [Icon(Icons.ac_unit), Text("Ac \nService")],
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 16.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.car_repair),
                          Text("Full Body \nPainting")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [Icon(Icons.work), Text("Repairing \nJob")],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.assistant),
                          Text("Breakdown \nAssistance")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [Icon(Icons.whatshot), Text("Tyre")],
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 16.0,),
              ],
            ),
            Divider(
              color: Colors.grey[350],
              thickness: 8.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 32.0, left: 16.0, bottom: 16.0),
              child: Text(
                "Bike Service",
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(Icons.departure_board),
                      Text("General \nService")
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(Icons.bike_scooter),
                      Text("Premium Bike \nService")
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(Icons.two_wheeler),
                      Text("Repair \nJob")
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(Icons.assistant),
                      Text("Breakdown \nAssistance")
                    ],
                  ),
                ),
              ],
            ),
             SizedBox(height: 16.0,),
            Row(
              children: [
                FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.house),
                          Text("Doorstep Bike \nService")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.money),
                          Text("Door \nPremium Bike \nService")
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.two_wheeler),
                          Text("Tyre Puncture")
                        ],
                      ),
                    ),
              ],
            ),
             SizedBox(height: 16.0,),
          ],
        ),
      ),
    );
  }
}
