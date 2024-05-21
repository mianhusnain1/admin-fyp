import 'package:adm/main.dart';
import 'package:adm/screens/doctor_details.dart';
import 'package:adm/screens/doctor_model.dart';
import 'package:adm/screens/image_clip_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool approval = false;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkColor,
        title: const Text(
          "Medical Admin",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection("doctor").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }

          final docs = snapshot.data!.docs;

          if (docs.isEmpty) {
            return const Center(
              child: Text("No doctors found."),
            );
          }

          final doctors = docs.map((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return Doctor.fromMap(data);
          }).toList();

          return ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (context, index) {
              final doctor = doctors[index];
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DoctorDetails(
                        doctor: doctor,
                      ),
                    ));
                  },
                  child: ListTile(
                    leading: ImageViewerClip(
                      urlImage: doctor.image.isNotEmpty
                          ? doctor.image
                          : "assets/imgs/doctor.png",
                      height: 50,
                      width: 50,
                    ),
                    title: Text(
                      doctor.name,
                      style: const TextStyle(
                          color: darkColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      doctor.email,
                      style: const TextStyle(color: darkColor),
                    ),
                    trailing: doctor.approved
                        ? const Icon(Icons.check_circle, color: Colors.green)
                        : const Icon(Icons.cancel, color: Colors.red),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
