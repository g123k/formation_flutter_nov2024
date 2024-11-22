import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/app_colors.dart';
import 'package:flutter_application_1/screens/details_screen.dart';
import 'package:flutter_application_1/screens/homepage.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return HomePage();
        },
      ),
      GoRoute(
        path: '/details',
        builder: (BuildContext context, GoRouterState state) {
          return DetailsScreen();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(primary: AppColors.blue),
        primaryColor: AppColors.blue,
        primaryColorLight: AppColors.blueLight,
        primaryColorDark: AppColors.blueDark,
        fontFamily: 'Avenir',
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: AppColors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: AppColors.blue,
          ),
          titleTextStyle: TextStyle(
            color: AppColors.blue,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: AppColors.blue,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            color: AppColors.gray2,
            fontSize: 18.0,
          ),
          headlineMedium: TextStyle(
            color: AppColors.gray3,
            fontSize: 17.0,
          ),
          headlineSmall: TextStyle(
            color: AppColors.blue,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        dividerColor: AppColors.gray2,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.blue,
          unselectedItemColor: AppColors.gray2,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      routerConfig: _router,
    );
  }
}

class ColorIW extends InheritedWidget {
  const ColorIW({
    required this.color,
    required super.child,
    super.key,
  });

  final Color color;

  static ColorIW of(BuildContext context) {
    final ColorIW? result =
        context.dependOnInheritedWidgetOfExactType<ColorIW>();
    assert(result != null, 'No ColorIH found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ColorIW oldWidget) {
    return oldWidget.color != color;
  }
}
