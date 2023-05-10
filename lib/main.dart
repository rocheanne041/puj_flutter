import 'package:flutter/material.dart';
import 'package:puj_ticket/src/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:puj_ticket/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:puj_ticket/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: OnBoardingScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Peoples Jeep')),
      body: const Center(
        child: Text('Home page'),
      ),
    );
  }
}



















// import 'package:flutter/material.dart';
// import 'package:puj_ticket/styled_text.dart';
// import 'gradient_container.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: GradientContainer(Colors.blue, Colors.deepPurple),
//       ),
//     ),
//   );
// }
