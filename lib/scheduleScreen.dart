
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset('images/calendar-check.jpg'),
                  width: 120,
                  height: 120,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Schedule', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 3, color: Colors.grey)
                          )
                        ),
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                        child: Wrap(
                          children: [
                            Text("Here is a list of the sessions you have booked\nYou can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours"),
                          ]
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          LessonBookingCard(
            date: "Wed, 08 Mar 23",
            lessonCount: 1,
            nationality: 'Viet nam',
            name: 'Keegan',
            imageUrl: 'images/avt.jpg',
          ),
          LessonBookingCard(
            date: "Wed, 08 Mar 23",
            lessonCount: 1,
            nationality: 'Viet nam',
            name: 'Keegan',
            imageUrl: 'images/avt.jpg',
          )
        ],
      ),
    );
  }
}

class LessonBookingCard extends StatelessWidget {
  LessonBookingCard({Key? key,
    required this.date,
    required this.lessonCount,
    required this.imageUrl,
    required this.name,
    required this.nationality,
  }) : super(key: key);

  String imageUrl, name, nationality, date;
  int lessonCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(220,220,220, 100),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(date, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Text('$lessonCount lesson')
                ],
              ),
              Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      padding: const EdgeInsets.all(5),
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(imageUrl),
                      )
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      SizedBox(height: 5,),
                      Text(nationality,
                          style: TextStyle(fontSize: 14,)
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.message_outlined, size: 14, color: Colors.blueAccent,),
                          SizedBox(width: 2,),
                          Text('Direct Message',
                              style: TextStyle(fontSize: 12, color: Colors.blueAccent)
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          LessionCard(),
        ],
      ),
    );
  }
}

class LessionCard extends StatelessWidget {
  const LessionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
      margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
      color: Colors.white,
      child: Column(
        children: [
          LessonTile(date: '08:00 - 09:25'),
          RequestForLessonCard()
        ],
      ),
    );
  }
}

class LessonTile extends StatelessWidget {
  LessonTile({Key? key, required this.date}) : super(key: key);

  String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(date, style: TextStyle(fontSize: 16),),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.disabled_by_default, size: 14, color: Colors.red,),
          label: Text('Cancel', style: TextStyle(color: Colors.red),),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.red),
            ),
    )
      ],
    );
  }
}

class RequestForLessonCard extends StatelessWidget {
  const RequestForLessonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Request for lesson'),
              Text('Edit Request', style: TextStyle(color: Colors.blueAccent),)
            ],
          )
        ],
      ),
    );
  }
}




