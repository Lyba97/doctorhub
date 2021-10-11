import 'package:doctorhub/design_system/colors.dart';
import 'package:doctorhub/design_system/styles.dart';
import 'package:doctorhub/models/doctor.dart';
import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      border: Border.all(color: cardColor5percent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.arrow_back),
                ),
                Text(
                  'Doctors',
                  style: medium16,
                ),
                Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        border: Border.all(color: cardColor5percent, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.filter_list)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              height: 44,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'Search for doctors',
                    style: regular14.apply(
                        color: Colors.blueGrey.withOpacity(0.8)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: doctors.length,
                itemBuilder: (BuildContext ctx, index) {
                  return doctorsCard(doctors[index]);
                }),
          )
        ],
      ),
    );
  }

  Widget doctorsCard(Doctor doctor) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 22),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(doctor.img)),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            doctor.name,
            style: medium14,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            doctor.speciality,
            style: bold14.apply(color: Colors.blueGrey, fontSizeFactor: 0.8),
          ),
          Text(
            '⭐️ ${doctor.rating} (${doctor.reviewsCount} reviews)',
            style: medium10.apply(color: Colors.blueGrey),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.062),
              //spreadRadius: 5,
              blurRadius: 60,
              offset: const Offset(0, 10), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
