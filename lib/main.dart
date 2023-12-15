import 'package:flutter/material.dart';
import 'package:pomodoro_timer/screens/home.dart';
// import 'dart:async';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(
              0xFF232B55,
            ),
          ),
        ),
        cardColor: const Color(
          0xFFF4EDDB,
        ),
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(
            0xFF232B55,
          ),
        ),
      ),
      home: const Home(),
    );
  }
}




// class _PomodoroTimerState extends State<PomodoroTimer> {
//   int workDuration = 25 * 60;
//   int breakDuration = 5 * 60;
//   int cycles = 0;
//   int currentDuration = 25 * 60;
//   late Timer timer;
//   bool isWorking = true;
//   bool isPaused = true;

//   @override
//   void initState() {
//     super.initState();
//     startTimer();
//   }

//   void startTimer() {
//     timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {});
//       if (!isPaused) {
//         if (currentDuration > 0) {
//           currentDuration--;
//         } else {
//           if (isWorking) {
//             cycles++;
//             if (cycles >= 4) {
//               workDuration = 25 * 60;
//               breakDuration = 15 * 60;
//               cycles = 0;
//             }
//             isWorking = false;
//             currentDuration = breakDuration;
//           } else {
//             isWorking = true;
//             currentDuration = workDuration;
//           }
//         }
//       }
//     });
//   }

//   void toggleTimer() {
//     setState(() {});
//     isPaused = !isPaused;
//   }

//   String getTimerText() {
//     int minutes = (currentDuration ~/ 60);
//     int seconds = (currentDuration % 60);
//     String minutesStr = (minutes < 10) ? '0$minutes' : '$minutes';
//     String secondsStr = (seconds < 10) ? '0$seconds' : '$seconds';
//     return '$minutesStr:$secondsStr';
//   }

//   @override
//   void dispose() {
//     timer.cancel();
//     super.dispose();
//   }