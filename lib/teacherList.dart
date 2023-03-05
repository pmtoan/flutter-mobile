import 'package:flutter/material.dart';

class TeacherList extends StatelessWidget{
  static const double normalFontSize = 13;
  @override
  Widget build(BuildContext context) {

    List<String> titles = ["All", "English for kids", "English for business", "Conversational", "STARTERS", "MOVERS"];
    List<Widget> listCard = [
      TeacherCard(
        titles: titles,
        name: 'Jill Leano',
        nationality: 'Philippines(the)',
        description: "Hi, My name is Jill I am an experienced English Teacher from Philippine. I would like to share my enthusiasm with the learners in this platform. I've been working with diverse learners of all levels for many years. I am greatly passionate about about profession. I love teaching because I can help others improve their skills and it gives me joy and excitement meeting different learners around the world. In my class I worked with wonderful enthusiasm and positivity, and I'm happy to focus on my learner's goal.",
        imageUrl: 'images/avt.jpg',
      ),
      TeacherCard(
        titles: titles,
        name: 'Jill Leano',
        nationality: 'Philippines(the)',
        description: "Hi, My name is Jill I am an experienced English Teacher from Philippine. I would like to share my enthusiasm with the learners in this platform. I've been working with diverse learners of all levels for many years. I am greatly passionate about about profession. I love teaching because I can help others improve their skills and it gives me joy and excitement meeting different learners around the world. In my class I worked with wonderful enthusiasm and positivity, and I'm happy to focus on my learner's goal.",
        imageUrl: 'images/avt.jpg',
      )
    ];
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blueAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'You have no upcoming lesson.',
                      style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Total lesson time is 5 hours 0 minutes',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: const Text(
                      'Find a tutor',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: TextField(
                            style: TextStyle(
                                fontSize: normalFontSize
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(normalFontSize),
                                hintText: 'Enter tutor name...'
                            ),
                          )
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            style: TextStyle(
                                fontSize: normalFontSize
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(normalFontSize),
                                hintText: 'Select tutor nationality'
                            ),
                          )
                      )

                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: const Text(
                      'Select available tutoring time:',
                      style: TextStyle(fontSize: normalFontSize, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: TextField(
                            style: TextStyle(
                                fontSize: normalFontSize
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(normalFontSize),
                                hintText: 'Select a day'
                            ),
                          )
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            style: TextStyle(
                                fontSize: normalFontSize
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(normalFontSize),
                                hintText: 'Time'
                            ),
                          )
                      )

                    ],
                  ),
                  Wrap(
                    children: titles.map(
                            (title){
                          return Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.grey[350],
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                              ),
                              onPressed: () {},
                              child: Text(
                                  '${title}',
                                  style: const TextStyle(
                                      fontSize: normalFontSize,
                                      color: Colors.black
                                  )
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      onPressed: () {},
                      child: const Text(
                          'Reset Filters',
                          style: TextStyle(
                              fontSize: normalFontSize,
                              color: Colors.blueAccent
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: const Text(
                'Recommended tutor',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Column(children: listCard,)
          ]
        ),
      ),
    );
  }
}

class TeacherCard extends StatelessWidget{
  TeacherCard({
    super.key,
    required this.titles,
    required this.name,
    required this.nationality,
    required this.description,
    required this.imageUrl
  });

  List<String> titles;
  String name, nationality, description, imageUrl;

  @override
  Widget build(BuildContext context) {
    const double normalFontSize = 14;
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 11,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                  )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    const Text('No reviews yet',
                      style: TextStyle(
                          fontSize: normalFontSize,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                    Text(nationality,
                        style: const TextStyle(fontSize: normalFontSize,)
                    )
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.favorite, color: Colors.red,),
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)
                  ),
                )
              ],
            ),
            Wrap(
              children: titles.map(
                      (title){
                    return Container(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blueAccent[100],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                        ),
                        onPressed: () {},
                        child: Text(
                            title,
                            style: TextStyle(
                                fontSize: normalFontSize,
                                color: Colors.blueAccent[700]
                            )
                        ),
                      ),
                    );
                  }).toList(),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Wrap(
                children: [
                  Text(description, softWrap: false, maxLines: 4, overflow: TextOverflow.ellipsis, )
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                  children: [
                    const Spacer(),
                    ElevatedButton.icon(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_today, color: Colors.blueAccent),
                      label: const Text('Book',
                          style: TextStyle(
                              fontSize: normalFontSize,
                              color: Colors.blueAccent
                          )
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}