import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Transition',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageTransitionScreen(title: 'Page Transition'),
    );
  }
}

class PageTransitionScreen extends StatefulWidget {
  const PageTransitionScreen({super.key, required this.title});

  final String title;

  @override
  State<PageTransitionScreen> createState() => _PageTransitionScreenState();
}

class _PageTransitionScreenState extends State<PageTransitionScreen> {
  List<String> title = [
    "Fade Second Page - Default",
    "Left To Right Transition Second Page",
    "Right To Left Transition Second Page Ios SwipeBack",
    "Left To Right with Fade Transition Second Page",
    "Right To Left Transition Second Page",
    "Right To Left with Fade Transition Second Page",
    "Top to Bottom Second Page",
    "Bottom to Top Second Page",
    "Scale Transition Second Page",
    "Rotate Transition Second Page",
    "Size Transition Second Page",
    "Right to Left Joined",
    "Left to Right Joined",
    "Top to Bottom Joined",
    "Bottom to Top Joined",
    "Right to Left Pop",
    "Left to Right Pop",
    "Top to Bottom Pop",
    "Bottom to Top Pop",
    "PushNamed With arguments",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page Transition',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: SecondPage(
                    title: title[0],
                  ),
                  isIos: true,
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Fade Second Page - Default',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(seconds: 1),
                  child: SecondPage(
                    title: title[1],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Left To Right Transition Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  isIos: true,
                  duration: const Duration(seconds: 1),
                  child: SecondPage(
                    title: title[2],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Right To Left Transition Second Page Ios SwipeBack',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRightWithFade,
                  alignment: Alignment.topCenter,
                  duration: const Duration(seconds: 1),
                  child: SecondPage(
                    title: title[3],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Left To Right with Fade Transition Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(seconds: 1),
                  child: SecondPage(
                    title: title[4],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Right To Left Transition Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: const Duration(seconds: 1),
                  child: SecondPage(
                    title: title[5],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Right To Left with Fade Transition Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  curve: Curves.linear,
                  type: PageTransitionType.topToBottom,
                  child: SecondPage(
                    title: title[6],
                  ),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Top to Bottom Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  curve: Curves.linear,
                  type: PageTransitionType.bottomToTop,
                  duration: const Duration(seconds: 1),
                  child: SecondPage(
                    title: title[7],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Bottom to Top Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.scale,
                  alignment: Alignment.topCenter,
                  duration: const Duration(seconds: 1),
                  isIos: true,
                  child: SecondPage(
                    title: title[8],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Scale Transition Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  curve: Curves.bounceOut,
                  type: PageTransitionType.rotate,
                  alignment: Alignment.topCenter,
                  duration: const Duration(seconds: 1),
                  child: SecondPage(
                    title: title[9],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Rotate Transition Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  alignment: Alignment.bottomCenter,
                  curve: Curves.bounceOut,
                  type: PageTransitionType.size,
                  duration: const Duration(seconds: 1),
                  child: SecondPage(
                    title: title[10],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Size Transition Second Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      alignment: Alignment.bottomCenter,
                      curve: Curves.easeInOut,
                      duration: const Duration(seconds: 1),
                      reverseDuration: const Duration(seconds: 1),
                      type: PageTransitionType.rightToLeftJoined,
                      child: SecondPage(
                        title: title[11],
                      ),
                      childCurrent: widget));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Right to Left Joined',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.easeInOut,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    type: PageTransitionType.leftToRightJoined,
                    child: SecondPage(
                      title: title[12],
                    ),
                    childCurrent: widget),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Left to Right Joined',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.easeInOut,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    type: PageTransitionType.topToBottomJoined,
                    child: SecondPage(
                      title: title[13],
                    ),
                    childCurrent: widget),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Top to Bottom Joined',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.easeInOut,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    type: PageTransitionType.bottomToTopJoined,
                    child: SecondPage(
                      title: title[14],
                    ),
                    childCurrent: widget),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Bottom to Top Joined',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      alignment: Alignment.bottomCenter,
                      curve: Curves.easeInOut,
                      duration: const Duration(seconds: 1),
                      reverseDuration: const Duration(seconds: 1),
                      type: PageTransitionType.rightToLeftPop,
                      child: SecondPage(
                        title: title[15],
                      ),
                      childCurrent: widget));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Right to Left Pop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.easeInOut,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    type: PageTransitionType.leftToRightPop,
                    child: SecondPage(
                      title: title[16],
                    ),
                    childCurrent: widget),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Left to Right Pop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.easeInOut,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    type: PageTransitionType.topToBottomPop,
                    child: SecondPage(
                      title: title[17],
                    ),
                    childCurrent: widget),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Top to Bottom Pop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.easeInOut,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    type: PageTransitionType.bottomToTopPop,
                    child: SecondPage(
                      title: title[18],
                    ),
                    childCurrent: widget),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'Bottom to Top Pop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  child: SecondPage(
                    title: title[19],
                  ),
                  type: PageTransitionType.fade,
                  reverseDuration: const Duration(seconds: 3),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: const Center(
                child: Text(
                  'PushNamed With Arguments',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Second Page
class SecondPage extends StatelessWidget {
  final String? title;

  const SecondPage({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (title!.isEmpty)
                  ? const Text(
                      'Second Page',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    )
                  : Text(
                      title!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Text(
          '@sujitpatoliya',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ),
    );
  }
}
