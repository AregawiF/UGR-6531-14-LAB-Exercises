import 'package:flutter/material.dart';
import 'package:navigator_2/course.dart';
import 'package:navigator_2/course_detail_screen.dart';
import 'package:navigator_2/course_list_screen.dart';


class CourseApp extends StatefulWidget {
  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;

  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  List<Course> courses = [
    Course(
        code: "SiTE-001",
        title: "Introduction To AI",
        description: "This is an introduction to AI course"),
    Course(
        code: "SiTE-002",
        title: "Mobile Devlopment and Programming",
        description: "This is a mobile development course"),
    Course(
        code: "SiTE-003",
        title: "Introduction to Software Engineering",
        description: "This is a software engineering introduction course"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: CoursesListScreen(
              courses: courses,
              onTapped: _tabHandler,
            ),
          ),
          if (_selectedCourse != null)
            MaterialPage(
                key: ValueKey(_selectedCourse),
                child: CourseDetailsScreen(
                  course: _selectedCourse!,
                ))
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedCourse = null;
          });
          return true;
        },
      ),
    );
  }
}
