import 'package:elearning/constants.dart';
import 'package:flutter/material.dart';

class DetailCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/math.png"),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipPath(
                    clipper: CourseTitleClipper(),
                    child: Container(
                      color: Color(0xFFFFD073),
                      padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
                      child: Text(
                        "Intermediate".toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Mathematic", style: kHeadingTextStyle),
                  SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.people,
                      ),
                      SizedBox(width: 5),
                      Text("25k"),
                      SizedBox(width: 20),
                      Icon(
                        Icons.star,
                      ),
                      SizedBox(width: 5),
                      Text("4.5"),
                    ],
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\$50 ",
                          style: kHeadingTextStyle,
                        ),
                        TextSpan(
                          text: "\$100",
                          style: TextStyle(
                            color: Color(0xFFA0A5BD).withOpacity(.5),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 50,
                      color: Colors.grey.withOpacity(.5),
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: ListView(
                        children: <Widget>[
                          Center(
                            child:
                                Text("Course Content", style: kTitleTextStyle),
                          ),
                          SizedBox(height: 30),
                          CourseContent(
                            number: "01",
                            duration: 10.27,
                            title: "Introduction",
                            isDone: true,
                          ),
                          CourseContent(
                            number: "02",
                            duration: 22.13,
                            title: "Algebra",
                            isDone: false,
                          ),
                          CourseContent(
                            number: "03",
                            duration: 09.35,
                            title: "Operation of Algebra",
                            isDone: false,
                          ),
                          CourseContent(
                            number: "04",
                            duration: 15.00,
                            title: "Calculus",
                            isDone: false,
                          ),
                          CourseContent(
                            number: "05",
                            duration: 13.21,
                            title: "Geometry",
                            isDone: false,
                          ),
                          CourseContent(
                            number: "06",
                            duration: 17.05,
                            title: "Trigonometry",
                            isDone: false,
                          ),
                          CourseContent(
                            number: "07",
                            duration: 25.12,
                            title: "Graph of Functions",
                            isDone: false,
                          ),
                          CourseContent(
                            number: "08",
                            duration: 22.12,
                            title: "Rational Inequalities",
                            isDone: false,
                          ),
                          CourseContent(
                            number: "09",
                            duration: 21.00,
                            title: "Logarithm",
                            isDone: false,
                          ),
                          CourseContent(
                            number: "10",
                            duration: 05.13,
                            title: "3D Vectors",
                            isDone: false,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: -20,
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 10),
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 50,
                              color: Colors.grey.withOpacity(.1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child:
                                  Icon(Icons.favorite, color: Colors.pink[200]),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue,
                                ),
                                child: Text("Enroll Class".toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;
  const CourseContent({
    Key key,
    this.number,
    this.duration,
    this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: kHeadingTextStyle.copyWith(color: Colors.grey),
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration mins\n",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlue.withOpacity(isDone ? 1 : .5),
            ),
            child: Icon(Icons.play_arrow, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class CourseTitleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
