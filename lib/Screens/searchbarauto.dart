import "package:autocomplete_textfield/autocomplete_textfield.dart";
import "package:flutter/material.dart";
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Seachbarauto extends StatefulWidget {
  @override
  State<Seachbarauto> createState() => _SeachbarautoState();
}

class _SeachbarautoState extends State<Seachbarauto> {
  var _suggestionTextFieldController = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey<
      AutoCompleteTextFieldState<String>>(); // Assign an initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
            child: Text("All Name of Start A To Z",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            AutoCompleteTextField(
              key: key,
              controller: _suggestionTextFieldController,
              itemSubmitted: (item) {
                _suggestionTextFieldController.text = item;
              },
              clearOnSubmit: false,
              suggestions: suggestsList,
              decoration: InputDecoration(
                hintText: "Search Name",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              itemBuilder: (context, item) {
                return Container(
                  padding: EdgeInsets.all(19),
                  child: Row(
                    children: [
                      Text(
                        item,
                      ),
                    ],
                  ),
                ); // <-- Add the missing return statement
              },
              itemSorter: (a, b) {
                return a.compareTo(b);
              },
              itemFilter: (item, query) {
                return item.toLowerCase().startsWith(query.toLowerCase());
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                       FadeInRight(
                    duration: Duration(microseconds: 6000),
                    child: Text("What Is Flutter Language/Developer ",
                        style: GoogleFonts.abhayaLibre(fontSize: 30)),
                  ),
                  AnimatedTextKit(animatedTexts: [
                    TyperAnimatedText("Woow",
                        textStyle: GoogleFonts.acme(fontSize: 30)),
                    TyperAnimatedText("Fluter ",
                        textStyle: GoogleFonts.abhayaLibre(
                            fontSize: 30, color: const Color.fromRGBO(76, 175, 80, 1))),
                    TyperAnimatedText("Skills",
                        textStyle: GoogleFonts.abhayaLibre(
                            fontSize: 30, color: Colors.blue)),
                            TyperAnimatedText("VS Code ",
                        textStyle: GoogleFonts.abhayaLibre(
                            fontSize: 30, color: Colors.green)),
                    TyperAnimatedText("Freelancer",
                        textStyle: GoogleFonts.abhayaLibre(
                            fontSize: 30, color: Colors.blue)),
                    TyperAnimatedText("Pakistan",
                        textStyle: GoogleFonts.aDLaMDisplay(fontSize: 30)),
                  ]),


                  ],),
                  SizedBox(height: 20,),
               
                  FadeInUp(
                    // duration:Duration(microseconds: 400),
                    child: Text(
                        "A Flutter developer is a professional who specializes "
                        "mobile applications. Flutter is an open-source UI "
                        "software development toolkit created by Google,"
                        " and it allows developers to write code once "
                        "and deploy it on both iOS and Android platforms.",
                        style: GoogleFonts.adamina(fontSize: 19)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List suggestsList = [
    'ali',
    'ali',
    "Abigail",
    "Ava",
    "Amelia",
    "Aria",
    "Addison",
    "Aubrey",
    "Alice",
    "Anna",
    "Aaliyah",
    "Alexandra",
    "Bella",
    "Brooklyn",
    "Brielle",
    "Bailey",
    "Beatrice",
    "Charlotte",
    "Chloe",
    "Clara",
    "Cora",
    "Camila",
    "Daisy",
    "Delilah",
    "Destiny",
    "Diana",
    "Danielle",
    "Emma",
    "Emily",
    "Ella",
    "Eleanor",
    "Eden",
    "Faith",
    "Fiona",
    "Freya",
    "Finley",
    "Fatima",
    "Grace",
    "Gianna",
    "Gabriella",
    "Genesis",
    "Genevieve",
    "Harper",
    "Hazel",
    "Hannah",
    "Hailey",
    "Hope",
    "Isabella",
    "Ivy",
    "Isla",
    "Iris",
    "Imogen",
    "Jade",
    "Julia",
    "Jasmine",
    "Josephine",
    "Jordyn",
    "Kaitlyn",
    "Kennedy",
    "Kylie",
    "Katherine",
    "Khloe",
    "Lily",
    "Layla",
    "Leah",
    "Lillian",
    "Lucy",
    "Mia",
    "Madison",
    "Mila",
    "Maya",
    "Mackenzie",
    "Natalie",
    "Nora",
    "Naomi",
    "Nicole",
    "Nova",
    "Olivia",
    "Ophelia",
    "Oakley",
    "Odessa",
    "Olive",
    "Penelope",
    "Paisley",
    "Piper",
    "Peyton",
    "Pearl",
    "Quinn",
    "Queenie",
    "Qiana",
    "Quinlan",
    "Questa",
    "Riley",
    "Ruby",
    "Rose",
    "Rebecca",
    "Rachel",
    "Sophia",
    "Scarlett",
    "Stella",
    "Serenity",
    "Savannah",
    "Taylor",
    "Trinity",
    "Talia",
    "Thea",
    "Teagan",
    "Uma",
    "Unity",
    "Ursula",
    "Ulani",
    "Ulyssa",
    "Victoria",
    "Violet",
    "Vanessa",
    "Valentina",
    "Vera",
    "Willow",
    "Whitney",
    "Wren",
    "Wendy",
    "Winona",
    "Ximena",
    "Xanthe",
    "Xandra",
    "Xenia",
    "Xyla",
    "Yara",
    "Yasmin",
    "Yvette",
    "Yvonne",
    "Yael",
    "Zoe",
    "Zara",
    "Zelda",
    "Zaria",
    "Zoey"
        'abbas',
    'repair',
    'application',
    'flutter',
    'rana',
    'Addison',
    'Aubrey',
    'Alice',
    'Anna',
    'Aaliyah',
    'Alexandra',
    'Alyssa',
    'Ashley',
    'Avery',
    'Autumn',
    'Ariana',
    'abbas',
    'repair',
    'alication',
    'utter',
    'rana',
    'dison',
    'brey',
    'ice',
    'Anna',
    'Aaliyah',
    'Alexandra',
    'Alyssa',
    'Ashley',
    'Avery',
    'tumn',
    'riana',
  ];
}
