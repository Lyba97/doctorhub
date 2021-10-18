import 'package:doctorhub/design_system/colors.dart';
import 'package:doctorhub/design_system/styles.dart';
import 'package:doctorhub/models/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:palette_generator/palette_generator.dart';

class DoctorDetails extends StatefulWidget {
  final Doctor doctor;
  const DoctorDetails({Key? key, required this.doctor}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  late PaletteGenerator paletteGenerator;
  Rect? region;

  @override
  void initState() {
    paletteGenerator = PaletteGenerator.fromColors(
        [PaletteColor(const Color(0xff000000), 10)]);
    region = Offset.zero & const Size(110, 110);
    _updatePaletteGenerator(region);
    super.initState();
  }

  Future<void> _updatePaletteGenerator(Rect? newRegion) async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      AssetImage(widget.doctor.img),
      size: const Size(110, 110),
      region: newRegion,
      maximumColorCount: 20,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final PaletteGenerator paletteGen = paletteGenerator;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      paletteGen.lightMutedColor != null
                          ? paletteGen.lightMutedColor!.color.withOpacity(0.05)
                          : Colors.white,
                      Colors.white.withOpacity(0.55)
                    ]),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: cardColor5percent, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: cardColor5percent, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.more_vert)),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            paletteGen.lightMutedColor != null
                                ? paletteGen.lightMutedColor!.color
                                : Colors.white,
                            Colors.white.withOpacity(0.55)
                          ]),
                      boxShadow: [
                        BoxShadow(
                          color: paletteGen.lightMutedColor != null
                              ? paletteGen.lightMutedColor!.color
                                  .withOpacity(0.5)
                              : Colors.white,
                          spreadRadius: 0,
                          blurRadius: 30,
                          offset:
                              const Offset(0, 15), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          widget.doctor.img,
                          height: 110,
                          width: 110,
                        )),
                  ),
                  const SizedBox(height: 47),
                  Text(
                    widget.doctor.name,
                    style: bold18.apply(color: textColor),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    widget.doctor.speciality,
                    style: bold14.apply(color: cardColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22),
                    child: Row(
                      children: [
                        Expanded(
                            child: profileInfoCard(0xffC9ECFF,
                                'assets/persons.svg', '1000+', 'Patients')),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: profileInfoCard(
                                0xffFDF1F3,
                                'assets/badge.svg',
                                '10 Yrs',
                                'Experience'
                                    '')),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: profileInfoCard(0xffFEF6EC,
                                'assets/star.svg', '4.5', 'Ratings')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 42),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About', style: bold18.apply(color: textColor)),
                  const SizedBox(height: 6),
                  Text(
                      '${widget.doctor.name} is a top specialist at London '
                      'Bridge Hospital at London. He has achieved several '
                      'awards and recognition for is contribution and service in his own field. He is available for private consultation.',
                      style: regular10.apply(fontSizeFactor: 1.3)),
                  const SizedBox(
                    height: 25,
                  ),
                  Text('Working time', style: bold18.apply(color: textColor)),
                  const SizedBox(height: 6),
                  Text(
                    'Mon - Sat (8:00 am - 9:00 pm)',
                    style: regular10.apply(fontSizeFactor: 1.3),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text('Communication', style: bold18.apply(color: textColor)),
                  const SizedBox(height: 6),
                  communicationOption(0xffE8899E, Icons.messenger_rounded,
                      'Messaging', 'Chat me up, share photos.'),
                  communicationOption(0xff7ACEFA, Icons.phone, 'Audio call',
                      'Call your doctor directly.'),
                  communicationOption(0xffF7C480, Icons.videocam, 'Video call',
                      'See your doctor live.'),
                  const SizedBox(height: 42),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    height: 60,
                    minWidth: double.maxFinite,
                    color: swatch[500],
                    child: Text('Book Appointment', style: medium14.apply
                      (color: Colors.white),),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget profileInfoCard(color, icon, title, subtitle) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 130,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(21)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: Container(
            width: 45,
            decoration: BoxDecoration(
                color: Color(color),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  //   width: 20,
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SvgPicture.asset(
                        icon,
                        height: 20,
                        width: 20,
                      ))),
            ),
          )),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: bold14.apply(color: textColor),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subtitle,
            style: regular10.apply(fontSizeFactor: 1.3),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }

  Widget communicationOption(color, icon, title, subtitle) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(color).withOpacity(0.15)),
        child: Icon(
          icon,
          color: Color(color),
        ),
      ),
      title: Text(
        title,
        style: regular10.apply(fontSizeFactor: 1.3),
      ),
      subtitle: Text(
        subtitle,
        style: regular10.apply(fontSizeFactor: 1.1),
      ),
    );
  }
}
