import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    final databaseReference = FirebaseDatabase.instance.ref();
    Map<dynamic, dynamic> data = {};
    List<Map<dynamic,dynamic>> dataList = [];

  @override
  void initState(){
    super.initState();
    getPlantData();
    databaseReference.child("plants").onValue.listen((event) {
      if (event.snapshot.value != null) {
        setState(() {
          data = event.snapshot.value as Map<dynamic, dynamic>;
          dataList.clear();
          data.forEach((key, value) {
            dataList.add(value);
          });
        });
      }
    });
  }

    void getPlantData() async {
    DataSnapshot dataSnapshot = (await databaseReference.child("plants").get());
    if (dataSnapshot.value != null) {
      setState(() {
        dataList.clear();
        data = dataSnapshot.value as Map<dynamic, dynamic>;
        data.forEach((key, value) {
          dataList.add(value);
        });
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAFA77B),
      body: Center(
        child: Column(
          children: [
            const Text(
              "HygroPlant",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color(0xFF59772f),
                  letterSpacing: 4),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  final plantName = "Plant ${index+1}";
                  var plantMoisture = dataList[index]["moisture"];
                  bool isNotWatered = plantMoisture < 20;
                  return Card(
                    color: isNotWatered ? Colors.blue[100] : Colors.green[100],
                    child: ListTile(
                      title: Text(
                        plantName,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: isNotWatered ? Colors.blue : const Color(0xFF59772f),
                        ),
                      ),
                      subtitle: Text(
                        "Moisture: $plantMoisture%",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: isNotWatered ? Colors.blue : const Color(0xFF59772f),
                        ),
                      ),
                      leading: isNotWatered ? const Icon(Icons.water_drop, color: Colors.blue, size: Material.defaultSplashRadius) 
                      : const Icon(Icons.local_florist, color: Color(0xFF59772f), size: Material.defaultSplashRadius),
                      trailing:
                       Text( isNotWatered ? "Water Me!" : "Well hydrated",
                       style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isNotWatered ? Colors.blue : const Color(0xFF59772f),
                      ),),
                    ),
                  );
                },
                )
              
            )

          ],
        ),
      ),
    );
  }
}
