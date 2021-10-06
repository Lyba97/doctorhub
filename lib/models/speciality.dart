class SpecialistModel {
  String img;
  String speciality;
  int count;

  SpecialistModel(
      {required this.img, required this.speciality, required this.count});
}

List<SpecialistModel> specialists = [
  SpecialistModel(
      img: 'assets/brain.svg', speciality: 'Neurology', count: 2029),
  SpecialistModel(
      img: 'assets/dna.svg', speciality: 'Genetics', count: 1870),
  SpecialistModel(
      img: 'assets/dentist.svg', speciality: 'Dentistry', count: 2029),
  SpecialistModel(
      img: 'assets/surgery.svg', speciality: 'Surgery', count: 2029),

];
