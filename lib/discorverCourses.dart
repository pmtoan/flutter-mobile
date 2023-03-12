import 'package:flutter/material.dart';

class DiscoverCourses extends StatefulWidget {
  const DiscoverCourses({Key? key}) : super(key: key);

  @override
  _DiscoverCoursesState createState() => _DiscoverCoursesState();
}

class _DiscoverCoursesState extends State<DiscoverCourses> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset('images/course.jpg'),
                  width: 120,
                  height: 120,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Discover Courses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style:TextStyle(
                                  fontSize:14
                              ),
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal)
                                ),
                                isDense: true,                      // Added this
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: (){},
                            child: Icon(Icons.search, color: Colors.blueAccent),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.blueAccent)
                            ),
                          )
                        ],
                      ),
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
                              Text("LiveTutor has built the most quality, methodical and scientific courses in the fields of life for those who are in need of improving their knowledge of the fields."),
                            ]
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: FilterCard(),
          ),
          CoursesSection()
        ]
      ),
    );
  }
}



class FilterCard extends StatelessWidget {
  FilterCard({Key? key}) : super(key: key);

  List<String> levelList = ['Beginner', 'Upper-Beginner', 'Pre-Intermediate', 'Intermediate', 'Upper-Intermediate', 'Pre-Advanced', 'Advanced', 'Very Advanced'];
  List<String> categoryList = ['For Studying Abroad', 'English For Traveling','Conversational English', 'English For Beginner', 'Business English', 'STARTERS', 'English For Kid', 'PET'];
  List<String> sortByList = ['Level Decreasing', 'Level Increasing'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        DropdownButtonFormField(
          items: levelList.map((value) => DropdownMenuItem(value: value,child: Text(value),)).toList(),
          onChanged: (String? value) {  },
          decoration: const InputDecoration(
              hintText: 'Select level',
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent)),
              contentPadding: EdgeInsets.all(10)
          ),
        ),
        const SizedBox(height: 5),
        DropdownButtonFormField(
          items: categoryList.map((value) => DropdownMenuItem(value: value,child: Text(value),)).toList(),
          onChanged: (String? value) {  },
          decoration: const InputDecoration(
              hintText: 'Select category',
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent)),
              contentPadding: EdgeInsets.all(10)
          ),
        ),
        const SizedBox(height: 5),
        DropdownButtonFormField(
          items: sortByList.map((value) => DropdownMenuItem(value: value,child: Text(value),)).toList(),
          onChanged: (String? value) {  },
          decoration: const InputDecoration(
            hintText: 'Sort by level',
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent)),
              contentPadding: EdgeInsets.all(10)
          ),
        ),
      ],
    );
  }
}

class CoursesSection extends StatefulWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  _CoursesSectionState createState() => _CoursesSectionState();
}

class _CoursesSectionState extends State<CoursesSection> with SingleTickerProviderStateMixin{

  static List<String> tabList = ['Courses', 'E-Book', 'Interactive E-Book'];
  int _selectedTabbar = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabList.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {

    List<Course> courses = [
      Course('images/efk1.png', 'Life in the Internet Age',
          "Let's discuss how technology is changing the way we live", 'Intermediate', 9),
      Course('images/efk1.png', 'Life in the Internet Age',
          "Let's discuss how technology is changing the way we live", 'Intermediate', 9),
      Course('images/efk1.png', 'Life in the Internet Age',
          "Let's discuss how technology is changing the way we live", 'Intermediate', 9),
      Course('images/efk1.png', 'Life in the Internet Age',
          "Let's discuss how technology is changing the way we live", 'Intermediate', 9),
      Course('images/efk1.png', 'Life in the Internet Age',
          "Let's discuss how technology is changing the way we live", 'Intermediate', 9),
    ];

    List<EBook> ebooks = [
      EBook('images/waw1.jpeg', 'What a world 1',
          "For teenagers who have an excellent vocabulary background and brilliant", 'Beginner'),
      EBook('images/waw1.jpeg', 'What a world 1',
          "For teenagers who have an excellent vocabulary background and brilliant", 'Beginner'),
      EBook('images/waw1.jpeg', 'What a world 1',
          "For teenagers who have an excellent vocabulary background and brilliant", 'Beginner'),
    ];

    return Column(
      children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              indicatorColor: Colors.blueAccent,
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              tabs: tabList.map((e) => Tab(child: Text(e))).toList(),
              automaticIndicatorColorAdjustment: true,
              onTap: (index){
                setState(() {
                  _selectedTabbar = index;
                });
                },
            ),
          ),
          Center(
            child: Builder(builder: (_){
              if (_selectedTabbar == 0) {
                return Wrap(
                  children: courses.map((course) => CourseCard(
                      imageUrl: course.imageUrl,
                      courseName: course.courseName,
                      courseDescription: course.courseDescription,
                      lessonCount: course.lessonCount,
                      level: course.level)).toList()
                );
              } else if (_selectedTabbar == 1) {
                return Wrap(
                    children: ebooks.map((ebook) => EBookCard(
                        imageUrl: ebook.imageUrl,
                        courseName: ebook.courseName,
                        courseDescription: ebook.courseDescription,
                        level: ebook.level)).toList()
                );
              } else {
                return Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Image.asset('images/nodata.png'),
                        Text('No Data'),
                      ],
                    ),
                  )

                );
              }
            }),
          )
        ],
    );
  }
}

class CourseCard extends StatelessWidget {
  CourseCard({
    required this.imageUrl,
    required this.courseName,
    required this.courseDescription,
    required this.lessonCount,
    required this.level
  });

  String imageUrl, courseName, courseDescription, level;
  int lessonCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 180,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(imageUrl, fit: BoxFit.cover),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(courseName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),maxLines: 1, overflow: TextOverflow.ellipsis),
                SizedBox(height: 10,),
                Text(courseDescription, style: TextStyle(fontSize: 10), maxLines: 2, overflow: TextOverflow.ellipsis),
                SizedBox(height: 20,),
                Text('$level - $lessonCount lessons', style: TextStyle(fontSize: 12))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EBookCard extends StatelessWidget {
  EBookCard({
    required this.imageUrl,
    required this.courseName,
    required this.courseDescription,
    required this.level
  });

  String imageUrl, courseName, courseDescription, level;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 180,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(imageUrl, fit: BoxFit.cover),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(courseName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),maxLines: 1, overflow: TextOverflow.ellipsis),
                SizedBox(height: 10,),
                Text(courseDescription, style: TextStyle(fontSize: 10), maxLines: 2, overflow: TextOverflow.ellipsis),
                SizedBox(height: 20,),
                Text('$level', style: TextStyle(fontSize: 12))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Course {
  String imageUrl;
  String courseName;
  String courseDescription;
  String level;
  int lessonCount;

  Course(this.imageUrl, this.courseName, this.courseDescription, this.level,
      this.lessonCount);
}

class EBook {
  String imageUrl;
  String courseName;
  String courseDescription;
  String level;

  EBook(this.imageUrl, this.courseName, this.courseDescription, this.level);
}
