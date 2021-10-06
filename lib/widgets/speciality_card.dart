import 'package:doctorhub/design_system/colors.dart';
import 'package:doctorhub/design_system/styles.dart';
import 'package:doctorhub/models/speciality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityCard extends StatelessWidget {
  final SpecialistModel specialist;
  const SpecialityCard({Key? key, required this.specialist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.only(left: 14, right: 14, top: 21, bottom: 16),
      height: 144,
      width: 128,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: cardColor5percent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(specialist.img),
          Column(
            children: [
              Text(
                specialist.speciality,
                style: medium14,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '${specialist.count} Doctors',
                style: medium10.apply(color: cardColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
