import 'package:adm/screens/services.dart';
import 'package:adm/main.dart';
import 'package:adm/screens/doctor_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key, required this.doctor});
  final Doctor doctor;

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool approval = false;
  @override
  Widget build(BuildContext context) {
    final doc = widget.doctor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkColor,
        title: Text(
          "${doc.name.toUpperCase()} Details",
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        child: Center(
          child: Stack(children: [
            ListView(children: [
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
                                const Text(
                                  "8am to 8pm",
                                  style:
                                      TextStyle(fontSize: 18, color: darkColor),
                                ),
                                Text(
                                  doc.availability
                                      ? "Available"
                                      : "Not Available",
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 15, 140, 241),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
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
                          style:
                              const TextStyle(color: darkColor, fontSize: 15),
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
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        doc.description.isNotEmpty
                            ? doc.description
                            : " Doctor description is not updated yet.",
                        style: TextStyle(color: darkColor, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
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
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: darkColor,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.23,
                              width: MediaQuery.of(context).size.width - 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: darkColor),
                              ),
                              child: doc.license == ""
                                  ? Image.asset("assets/imgs/id.png")
                                  : Image.network(doc.image)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.23,
                              width: MediaQuery.of(context).size.width - 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: darkColor),
                              ),
                              child: doc.license == ""
                                  ? Image.asset("assets/imgs/id-1.png")
                                  : Image.network(doc.image)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ]),
            Positioned(
              bottom: 10,
              left: MediaQuery.of(context).size.width * 0.15,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          approval = false;
                        });

                        Services.updateDoctorApproval(doc.id, approval);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: darkColor),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            "Decline",
                            style: TextStyle(
                                color: darkColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          approval = true;
                        });

                        Services.updateDoctorApproval(doc.id, approval);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            color: approval ? Colors.green : darkColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: approval
                                ? const Text(
                                    "Approved",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                : const Text(
                                    "Approve",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
