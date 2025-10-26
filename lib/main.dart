import 'package:edupro/screens/course_details_page.dart';
import 'package:edupro/screens/course_selection_page.dart';
import 'package:edupro/screens/enrollment_form_page.dart';
import 'package:flutter/material.dart';

// Import all main screens
import 'package:edupro/screens/splash_screen.dart';
import 'package:edupro/screens/home_screen.dart';
import 'package:edupro/screens/program_details_page.dart';
import 'package:edupro/screens/curriculum_page.dart';
import 'package:edupro/screens/reviews_page.dart';
import 'package:edupro/screens/write_review_page.dart';
import 'package:edupro/screens/payment_method_page.dart';
import 'package:edupro/screens/payment_success_page.dart';
import 'package:edupro/screens/my_courses_page.dart';
import 'package:edupro/screens/profile_settings_page.dart';
import 'package:edupro/screens/edit_profile_page.dart';
import 'package:edupro/screens/notification_screen.dart';
import 'package:edupro/screens/notification_settings_page.dart';
import 'package:edupro/screens/all_category_screen.dart';
import 'package:edupro/screens/all_programs_screen.dart';
import 'package:edupro/screens/popular_sourses_screen.dart';
import 'package:edupro/screens/auth_screens.dart';

void main() {
  runApp(const EduProApp());
}

class EduProApp extends StatelessWidget {
  const EduProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduPro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6A5AE0),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6A5AE0)),
      ),
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/programDetails': (context) => const ProgramDetailsPage(),
        '/curriculum': (context) => const CurriculumPage(),
        '/reviews': (context) => const ReviewsPage(),
        '/writeReview': (context) => const WriteReviewPage(),
        '/paymentMethod': (context) => const PaymentMethodPage(),
        '/paymentSuccess': (context) => const PaymentSuccessPage(),
        '/myCourses': (context) => const MyCoursesPage(),
        '/profileSettings': (context) => const ProfileSettingsPage(),
        '/editProfile': (context) => const EditProfilePage(),
        '/notifications': (context) => const NotificationScreen(),
        '/notificationSettings': (context) => const NotificationSettingsPage(),
        '/categories': (context) => const AllCategoryScreen(),
        '/programs': (context) => const AllProgramsScreen(),
        '/popular': (context) => const PopularCoursesScreen(),
        '/auth': (context) => const LetsYouInScreen(),
        '/courseSelection': (context) => const CourseSelectionPage(),
        '/courseDetails': (context) => const CourseDetailsPage(),
        '/enrollmentForm': (context) => const EnrollmentFormPage(),
      },
    );
  }
}
