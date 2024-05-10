// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

class Services {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  //

  static Future<void> updateDoctorApproval(
      String doctorId, bool approved) async {
    try {
      await firestore.collection('doctor').doc(doctorId).update({
        'approved': approved,
      });
    } catch (e) {
      print("Error updating doctor approval status: $e");
      rethrow;
    }
  }

  //
}
