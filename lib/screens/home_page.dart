import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String studentName = "Hu Do";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(studentName + "'s Bird App"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getHappyDayMessage(),
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 40.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "today's bird is:",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Image.asset(getImageFileName())
              ),
            ),
            Text(
              getBirdName(),
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              getBirdSubtitle(),
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.announcement,
                  color: Colors.teal,
                ),
                title: Text(
                  getBirdMessage(),
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ], // Children Array
        ),
      ),
    );
  }

  String getHappyDayMessage() {
    String happyDayMessage = 'Happy ${getDayName()}!';
    return happyDayMessage;
  }

  int getNumDay() {
    DateTime date = DateTime.now();
    int currentNumDay = date.weekday;
    currentNumDay = currentNumDay;
    return currentNumDay;
  }

  String getDayName() {
    String dayName;
    List<String> dayStrArr = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    dayName = dayStrArr[getNumDay() - 1];
    return dayName;
  }

  String getImageFileName() {
    String imageFileName;
    List<String> imageStrArr = [
      'images/kingfisher.jpg',
      'images/robin.jpg',
      'images/chickadee.jpg',
      'images/nuthatch.jpg',
      'images/ducks.jpg',
      'images/owl.jpg',
      'images/blackbird.jpg'
    ];
    imageFileName = imageStrArr[getNumDay() - 1];
    return imageFileName;
  }

  String getBirdSubtitle() {
    String birdSubtitle;
    List<String> subtitleStrArr = [
      'Blue',
      'European',
      'Black-capped',
      'White-breasted',
      'Mallard',
      'Gray',
      'Red-winged'
    ];
    birdSubtitle = subtitleStrArr[getNumDay() - 1];
    return birdSubtitle;
  }

  String getBirdMessage() {
    String birdMessage;
    List<String> messageStrArr = [
      'Plunges headfirst into water to fish',
      'Early bird, sings at dawn',
      'Can be tamed and hand fed',
      'Forages in trunks and larger tree limbs',
      'Dabbling, tail goes out of water to feed',
      'Fluffy plumage makes it seem large',
      'Bold, sometimes attacks other birds'
    ];
    birdMessage = messageStrArr[getNumDay() - 1];
    return birdMessage;
  }

  String getBirdName() {
    String imageString;
    String birdName;
    imageString = getImageFileName();
    birdName = imageString.substring(0, imageString.indexOf('.'));
    birdName = birdName.substring(7);
    birdName = birdName[0].toUpperCase() + birdName.substring(1);
    return birdName;
  }

}
