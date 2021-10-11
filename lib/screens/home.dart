import 'package:doctorhub/design_system/colors.dart';
import 'package:doctorhub/design_system/styles.dart';
import 'package:doctorhub/models/speciality.dart';
import 'package:doctorhub/screens/doctors.dart';
import 'package:doctorhub/widgets/speciality_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome, Lyba',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: borderColor, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        'assets/calendar.svg',
                        height: 22,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      'assets/vert-option.svg',
                      height: 22,
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Covid-19',
                          style: bold36,
                        ),
                        Text(
                          'Healthcare',
                          style: bold36,
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Book your next online appointments',
                          style: medium16.apply(
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: SizedBox(
                        // height: 180,
                       // width: double.maxFinite,
                        child: Image.asset('assets/illustration.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 27),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: cardColor5percent, borderRadius: BorderRadius.circular(20)),
            child: GestureDetector(
              onTap: (){
                Get.to(()=>const Doctors());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'STI Problems?',
                          style: bold14.apply(color: textColor),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Find suitable specialists here',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: light12,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset('assets/arrow-next.svg'),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Text(
              'Specialty 😷',
              style: bold16.apply(color: textColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 144,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SpecialityCard( specialist: specialists[index],);
                }),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }


}

