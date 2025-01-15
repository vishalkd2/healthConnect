import 'package:flutter/material.dart';
import 'package:healthconnect/screens/Homepage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            decoration: PageDecoration(
              titleTextStyle: TextStyle(fontSize: 30),
              fullScreen: true,
              pageColor: Colors.blueAccent.withOpacity(0.5),
              bodyPadding: EdgeInsets.all(30),
              titlePadding: EdgeInsets.all(40)
            ),
            title: "Your health matters",
            body: "Our doctors are here to listen and guide you with care.",
            image: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset("assets/introPictures/doctorPatient.jpg",fit: BoxFit.cover,
                ))),
        PageViewModel(
            decoration: PageDecoration(
                titleTextStyle: TextStyle(fontSize: 30),
                fullScreen: true,
                pageColor: Colors.blueAccent.withOpacity(0.5),
                bodyPadding: EdgeInsets.all(10),
                titlePadding: EdgeInsets.all(10)
            ),
            title: "Innovative Medical Research for a Healthier Future",
            body: "Our dedicated team of doctors and scientists work tirelessly to discover groundbreaking solutions for improving patient care and treatment outcomes.",
            image: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset("assets/introPictures/doctoResearch.jpg",fit: BoxFit.cover,
                ))),

        PageViewModel(
            decoration: PageDecoration(
                titleTextStyle: TextStyle(fontSize: 30),
                fullScreen: true,
                pageColor: Colors.blueAccent.withOpacity(0.5),
                bodyPadding: EdgeInsets.all(10),
                titlePadding: EdgeInsets.all(10)
            ),
            title: "Holistic Wellness through Yoga and Nature",
            body: "Our practice nurtures mental clarity, emotional peace, and physical well-being, helping you reconnect with yourself and the natural world for a harmonious life.",
            image: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset("assets/introPictures/yogaMonk.jpg",fit: BoxFit.cover,
                ))),
      ],
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      },
      onSkip: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      },
      showSkipButton: true,
      skip: Text("Skip", style: TextStyle(color: Colors.blue)),
      next: Icon(
        Icons.arrow_forward,
        color: Colors.blue,
      ),
      done: Text(
        "Done",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }
}
