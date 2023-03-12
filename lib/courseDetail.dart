import 'package:flutter/material.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CourseHeader(
            imageUrl: 'images/efk1.png',
            courseName: 'Life in the Internet Age',
            courseDescription: "Let's discuss how technology is changing the way we live",
          ),
          CourseOverview(),
          ListTopicCard(),
          SuggestedTutorCard()
        ],
      ),
    );
  }
}

class CourseHeader extends StatelessWidget {
  CourseHeader({
    required this.imageUrl,
    required this.courseName,
    required this.courseDescription,
  });

  String imageUrl, courseName, courseDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            child: Image.asset(imageUrl, fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(courseName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
                SizedBox(height: 10,),
                Text(courseDescription, style: TextStyle(fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Discover'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}

class CourseOverview extends StatelessWidget {
  const CourseOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 0, 20),
          child: Text('Overview',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
            child: CourseOverviewTile(title: 'Why take this course',
                description: "Our world is rapidly changing thanks to new technology, and the vocabulary needed to discuss modern life is evolving almost daily. In this course you will learn the most up-to-date terminology from expertly crafted lessons as well from your native-speaking tutor.")
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
            child: CourseOverviewTile(title: 'What will you be able to do',
              description: "You will learn vocabulary related to timely topics like remote work, artificial intelligence, online privacy, and more. In addition to discussion questions, you will practice intermediate level speaking tasks such as using data to describe trends.",)
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 0, 20),
          child:  AttributeCourseCard(attributeName: 'Experience Level', attributeValue: 'Intermediate', icon: Icons.ac_unit),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 0, 20),
          child:  AttributeCourseCard(attributeName: 'Course Length', attributeValue: '9 topics', icon: Icons.ac_unit),
        )
      ],
    );
  }
}

class CourseOverviewTile extends StatelessWidget {
  CourseOverviewTile({required this.title, required this.description});

  String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Icon(
                Icons.question_mark_outlined, color: Colors.red, size: 17,),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red, width: 2)
              ),
            ),
            SizedBox(width: 10,),
            Text(title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 10, 10),
          child: Wrap(
              children: [Text(description, style: TextStyle(fontSize: 12))]),
        )

      ],
    );
  }
}

class AttributeCourseCard extends StatelessWidget {
  AttributeCourseCard({required this.attributeName, required this.attributeValue, required this.icon});

  String attributeName, attributeValue;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(attributeName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 15, 10, 5),
          child: Row(
            children: [
              Icon(icon, color: Colors.blueAccent, size: 17,),
              SizedBox(width: 10,),
              Text(attributeValue,
                style: TextStyle(fontSize: 14),)
            ],
          )
    )
      ],
    );
  }
}

class ListTopicCard extends StatelessWidget {
  const ListTopicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 0, 20),
          child: Text('List Topics',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
        Center(
          child: Wrap(
            children: [
              TopicTile(name: '1.\nInternet',),
              TopicTile(name: '2.\nArtificial Intelligence (AI)',),
              TopicTile(name: '3.\nSocial Media',),
              TopicTile(name: '4.\nInternet Privacy',),
              TopicTile(name: '5.\nLive Streaming',),
            ],
          ),
        )

      ],
    );
  }
}

class TopicTile extends StatelessWidget {
  TopicTile({required this.name});

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: (){},
        child: Text(name),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.grey, width: 1) ),
          fixedSize: Size(150, 100),
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}

class SuggestedTutorCard extends StatelessWidget {
  const SuggestedTutorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 0, 0),
          child: Text('Suggested Tutors',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 0, 10),
          child: Column(
            children: [
              SuggestedTutorTile(name: 'Keegan',),
              SuggestedTutorTile(name: 'John',),
            ],
          ),
        )

      ],
    );
  }
}

class SuggestedTutorTile extends StatelessWidget {
  SuggestedTutorTile({required this.name});

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        children: [
          Text(name, style: TextStyle(fontSize: 14)),
          SizedBox(width: 10,),
          Text('More Info', style: TextStyle(fontSize: 12, color: Colors.blue),)
        ],
      ),
    );
  }
}
