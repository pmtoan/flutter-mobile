import 'package:flutter/material.dart';

class TeacherDetail extends StatefulWidget {
  const TeacherDetail({Key? key}) : super(key: key);

  @override
  _TeacherDetailState createState() => _TeacherDetailState();
}

class _TeacherDetailState extends State<TeacherDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
              child: HeaderDetailCard(
                imageUrl: 'images/avt.jpg',
                name: 'Keegan',
                nationality: 'Viet Nam',
                nationalityFlag: 'images/',
                description: 'I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.',
              )
          ),
          ActionCard(favorite: false, reviews: []),
          Container(
              padding: EdgeInsets.all(10),
              child: LanguaguesCard(languagues: ['English', 'Vietnamese'],)
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: LanguaguesCard(languagues: ['English for Business', 'Conversational', 'English for kids', 'TOEIC'],)
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: SuggestedCoursesCard(courses: ['Basic Conversation Topics', 'Life in the Internet Age'],)
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: InterestsCard(description: 'I loved the weather, the scenery and the laid-back lifestyle of the locals.',)
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: TeachingExperienceCard(description: 'I have more than 10 years of teaching english experience',)
          )
        ],
      ),
    );
  }
}

class HeaderDetailCard extends StatelessWidget {
  HeaderDetailCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.nationality,
    required this.nationalityFlag,
    required this.description
  }) : super(key: key);

  String imageUrl, name, nationality, nationalityFlag, description;

  @override
  Widget build(BuildContext context) {
    double normalFontSize = 14;
    return Column(
      children: [
        Row(
          children: [
            Container(
                height: 100,
                width: 100,
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    )
                ),
                SizedBox(height: 5,),
                StarRatingCard(starCount: 4, ratingCount: 88),
                SizedBox(height: 5,),
                Text(nationality,
                    style: TextStyle(fontSize: normalFontSize,)
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
          child: Wrap(
            children: [
              Text(description)
            ],
          ),
        ),
      ],
    );
  }
}

class StarRatingCard extends StatelessWidget {
  StarRatingCard({Key? key, required this.ratingCount, required this.starCount}) : super(key: key);
  int ratingCount, starCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(int i=0; i<starCount; i++)
          Icon(Icons.star, size: 18, color: Colors.yellow),
        for(int i=0; i<(5 - starCount); i++)
          Icon(Icons.star, size: 18, color: Colors.grey),
        Text('($ratingCount)',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic)
        )
      ],
    );
  }
}

class ActionCard extends StatelessWidget {
  ActionCard({Key? key, required this.favorite, required this.reviews}) : super(key: key);
  bool favorite;
  List reviews;

  @override
  Widget build(BuildContext context) {
    var favoriteIcon = Icons.favorite;

    if(favorite == false){
      favoriteIcon = Icons.favorite_outline;
    }
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: (){},
              child: Column(
                children: [
                  Icon(favoriteIcon),
                  Text('Favorite')
                ],
              ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white.withOpacity(0)),
              foregroundColor: MaterialStatePropertyAll(Colors.blueAccent),
              overlayColor:  MaterialStatePropertyAll(Colors.white.withOpacity(0)),
            ),
          ),
          TextButton(
              onPressed: (){},
              child: Column(
                children: [
                  Icon(Icons.report_outlined),
                  Text('Report')
                ],
              ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white.withOpacity(0)),
              foregroundColor: MaterialStatePropertyAll(Colors.blueAccent),
              overlayColor:  MaterialStatePropertyAll(Colors.white.withOpacity(0)),
            ),
          ),
          TextButton(
              onPressed: (){},
              child: Column(
                children: [
                  Icon(Icons.star_outline),
                  Text('Reviews')
                ],
              ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white.withOpacity(0)),
              foregroundColor: MaterialStatePropertyAll(Colors.blueAccent),
              overlayColor:  MaterialStatePropertyAll(Colors.white.withOpacity(0)),
            ),
          )
        ],
      ),
    );
  }
}

class LanguaguesCard extends StatelessWidget {
  LanguaguesCard({Key? key, required this.languagues}) : super(key: key);

  List<String> languagues;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Languages', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Wrap(
            children: languagues.map(
                    (title){
                  return Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[100],
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      onPressed: () {},
                      child: Text(
                          title,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueAccent
                          )
                      ),
                    ),
                  );
                }).toList(),
          ),
        )
      ],
    );
  }
}

class SpecialtiesCard extends StatelessWidget {
  SpecialtiesCard({Key? key, required this.specialties}) : super(key: key);

  List<String> specialties;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Specialties', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Wrap(
            children: specialties.map(
                    (title){
                  return Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[100],
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      onPressed: () {},
                      child: Text(
                          title,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueAccent
                          )
                      ),
                    ),
                  );
                }).toList(),
          ),
        )
      ],
    );
  }
}

class SuggestedCoursesCard extends StatelessWidget {
  SuggestedCoursesCard({Key? key, required this.courses}) : super(key: key);

  List courses;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Suggested Courses', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Wrap(
            children: courses.map(
                    (course){
                  return Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Row(
                      children: [
                        Text('$course: ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                        Text('Link',
                            style: TextStyle(fontSize: 14, color: Colors.blueAccent)
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        )
      ],
    );
  }
}

class InterestsCard extends StatelessWidget {
  InterestsCard({Key? key, required this.description}) : super(key: key);

  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Interests', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Wrap(
            children: [
              Text(description, style: TextStyle( fontSize: 14,)),
            ]
          ),
        )
      ],
    );
  }
}

class TeachingExperienceCard extends StatelessWidget {
  TeachingExperienceCard({Key? key, required this.description}) : super(key: key);

  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Teaching Experience', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Wrap(
              children: [
                Text(description, style: TextStyle( fontSize: 14,)),
              ]
          ),
        )
      ],
    );
  }
}
