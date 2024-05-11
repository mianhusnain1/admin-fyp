import 'package:adm/screens/doctor_model.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key, required this.doctor});
  final Doctor doctor;

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    final doc = widget.doctor;
    return Scaffold(
      appBar: AppBar(
        title: Text("${doc.name.toUpperCase()} Details"),
      ),
    );
  }
}
