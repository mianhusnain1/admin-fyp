import 'package:adm/screens/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: SizedBox(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 245, 248),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 8,
                          spreadRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width - 220,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    // Container(
                    //   height: 280,
                    //   width: MediaQuery.of(context).size.width - 220,
                    //   decoration: const BoxDecoration(),
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(vertical: 20.0),
                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Text(
                    //       doc.name,
                    //       style: const TextStyle(fontSize: 20),
                    //     ),
                    //     Text(
                    //       doc.category,
                    //       style: const TextStyle(fontSize: 18),
                    //     ),
                    //     const Text(
                    //       "Available",
                    //       style:
                    //           TextStyle(fontSize: 20, color: Colors.blue),
                    //     ),
                    // const Text(
                    //   "8am to 8pm",
                    //   style: TextStyle(fontSize: 18),
                    //   // ),
                    // ],
                    // ),
                    // ),
                    // )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.email),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      doc.email,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              )),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.copy,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        width: 40,
                      ),
                      const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      const Text(" :"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "+92 316 1404 158",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
