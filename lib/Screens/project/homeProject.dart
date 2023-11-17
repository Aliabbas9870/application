import 'package:application/Screens/searchbarauto.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter/material.dart';
import "package:autocomplete_textfield/autocomplete_textfield.dart";
import 'package:google_fonts/google_fonts.dart';

class HomeProject extends StatefulWidget {
  @override
  State<HomeProject> createState() => _HomeProjectState();
}

class _HomeProjectState extends State<HomeProject> {
  var _suggestionTextFieldController = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> key =
      GlobalKey<AutoCompleteTextFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 203, 216, 223),
        drawer: Drawer(
          backgroundColor: Colors.blue,
        ),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 203, 216, 223),
            title: Center(
                child: Text(
              " Home ",
            )),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 13.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/dark.jpeg"),
                ),
              )
            ]),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                image: AssetImage("assets/images/whitflow.jpeg"),
                fit: BoxFit.cover,
              ))),
              SizedBox(
                height: 16,
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
                  child: AutoCompleteTextField(
                    key: key,
                    controller: _suggestionTextFieldController,
                    itemSubmitted: (item) {
                      _suggestionTextFieldController.text = item;
                    },
                    clearOnSubmit: false,
                    suggestions: suggestsList,
                    decoration: InputDecoration(
                      hintText: "Search Technician",
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
                ),
              ), 
              //end seach bar autocomplete,
              Divider(height:20,thickness:2),
              //heare start row
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
               // scrollDirection:Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text("All category",
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.list),
                      ],
                    ),
                    Text(" Car",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(" Fridge",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(" Washing",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(" Car",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(" Fridge",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(" Washing",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(" Car",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(" Fridge",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(" Washing",
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
              ),
              Divider(height:25,thickness:2),
              SizedBox(
                height: 12,
              ),
              //end Row bar All Category
              Center(
                  child: Text("You Search For Electricien",
                      style: GoogleFonts.acme(
                          fontWeight: FontWeight.bold, fontSize: 30))),
              //End and start profiles
              SizedBox(height: 80)
              ,
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  //profiles       /////////////////////////////
                  Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Shan Ali",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ]),
                  ),
                   Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Shan Ali",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ]),
                  ),//person Dat////////////////////////
                 Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Ali Ali",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ]),
                  ),
                   Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Saba ",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ]),
                  ),
                  
          
                ],
              ),
              
          
              SizedBox(height: 90,),
               Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  //profiles       /////////////////////////////
                  Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Shan Ali",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ]),
                  ),
                   Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Shan Ali",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ]),
                  ),//person Dat////////////////////////
                 Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Ali Ali",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white))
                    ]),
                  ),
                   Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Rana",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white)),
                              



                    ]),
                  ),
                  
                  
                  
          
                ],
              ),
              SizedBox(height: 90,),
                Container(
                    width: 100,
                    color: Colors.black87,
                    child: Column(children: [
                      Image.asset("assets/images/whit.jpeg"),
                      Text("Rana",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white)),
                              


                              
                    ]),
                  ),
          
              ///profile infomation end
              
            ]),
          ),
        ));
  }

  List suggestsList = [
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Eva',
    'Frank',
    'Grace',
    'Henry',
    'Ivy',
    'Jack',
    'Katie',
    'Leo',
    'Mia',
    'Nathan',
    'Olivia',
    'Peter',
    'Quinn',
    'Rachel',
    'Sam',
    'Tom',
    'Uma',
    'Victor',
    'Wendy',
    'Xavier',
    "Assembler",
    "BoltMaster",
    "CircuitBrain",
    "DigiDrive",
    "EncoderX",
    "FiberOpto",
    "GearSync",
    "HydroTech",
    "InfernoForge",
    "JetMachina",
    "KineticXplorer",
    "LaserDynamo",
    "MicroMach",
    "NanoNerve",
    "OptiTech",
    "PlasmaPulse",
    "QuantumQuasar",
    "RoboRift",
    "SensorSync",
    "TechTitan",
    "UltraUplink",
    "VortexVista",
    "WaveWizard",
    "XenoXpress",
    "YottaYield",
    "ZapZoom",
    "AnalyzerAlpha",
    "BalancerBlast",
    "CalibratorCore",
    "DynamoDroid",
    "ExtractorExpress",
    "FusionForge",
    "GeneratorGrid",
    "HarmonizerHaven",
    "InverterIgnite",
    "JetJoint",
    "KineticKrafter",
    "LaserLocator",
    "MechMatrix",
    "NanoNest",
    "OptimizerOrbit",
    "PlasmaPulse",
    "QuantumQuota",
    "ReactorRadar",
    "SensorSphere",
    "TechTracer",
    "UltraUmbrella",
    "VortexVoyager",
    "WaveWelder",
    "XenoXpress",
    "YieldYonder",
    "ZapZenith"
        'Yasmine',
    'Zach'
  ];
}
