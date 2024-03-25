import 'package:adm/main.dart';
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
        title: Text(
          "${doc.name.toUpperCase()} Details",
          style: const TextStyle(
              color: darkColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        child: Center(
          child: ListView(children: [
            Column(
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
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black54),
                        ),
                        child: doc.image == ""
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/imgs/doctor.png",
                                  fit: BoxFit.contain,
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(doc.image)),
                      ),
                      Container(
                        height: 280,
                        width: MediaQuery.of(context).size.width - 220,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Dr. ${doc.name}",
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: darkColor),
                              ),
                              Text(
                                doc.category,
                                style: const TextStyle(
                                    fontSize: 18, color: darkColor),
                              ),
                              Text(
                                doc.availability
                                    ? "Available"
                                    : "Not Available",
                                style: const TextStyle(
                                    color: darkColor, fontSize: 18),
                              ),
                              const Text(
                                "8am to 8pm",
                                style:
                                    TextStyle(fontSize: 18, color: darkColor),
                              ),
                            ],
                          ),
                        ),
                      )
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
                      const Icon(
                        Icons.email,
                        color: darkColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        doc.email,
                        style: const TextStyle(color: darkColor, fontSize: 15),
                      ),
                    ],
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                        color: darkColor,
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
                        Text(
                          doc.phone,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width - 30,
                  child: Row(
                    children: [
                      Container(
                          child: const Text(
                        "Expreience :",
                        style: TextStyle(
                            color: darkColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                      const Text(
                        " 2 Years + ",
                        style: TextStyle(
                          color: darkColor,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width - 30,
                  child: const Row(
                    children: [
                      Text(
                        "Language :",
                        style: TextStyle(
                            color: darkColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " English, Urdu ",
                        style: TextStyle(
                          color: darkColor,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width - 30,
                    child: const Text(
                      "Description :",
                      style: TextStyle(
                          color: darkColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: darkColor),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width - 30,
                    child: const Text(
                      "Service License :",
                      style: TextStyle(
                          color: darkColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width - 30,
                  child: Row(
                    children: [Container()],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
