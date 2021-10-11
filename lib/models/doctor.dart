class Doctor {
  String name;
  String img;
  String speciality;
  int reviewsCount;
  double rating;
  bool isActive;

  Doctor({
    required this.name,
    required this.img,
    required this.isActive,
    required this.speciality,
    required this.reviewsCount,
    required this.rating,
  });
}

List<Doctor> doctors = [
  Doctor(
      name: 'Dr. Bellamy',
      img: 'assets/doctors/Bitmap.png',
      isActive: false,
      speciality: 'Viralogist',
      reviewsCount: 145,
      rating: 3.8),
  Doctor(
      name: 'Dr. Menshah',
      img: 'assets/doctors/Bitmap-1.png',
      isActive: true,
      speciality: 'Oncologist',
      reviewsCount: 100,
      rating: 4.8),
  Doctor(
      name: 'Dr. Bellamy',
      img: 'assets/doctors/Bitmap-2.png',
      isActive: false,
      speciality: 'Viralogist',
      reviewsCount: 145,
      rating: 3.8),
  Doctor(
      name: 'Dr. Bellamy',
      img: 'assets/doctors/Bitmap-4.png',
      isActive: false,
      speciality: 'Viralogist',
      reviewsCount: 145,
      rating: 3.8),
  Doctor(
      name: 'Dr. Bellamy',
      img: 'assets/doctors/Bitmap-5.png',
      isActive: false,
      speciality: 'Viralogist',
      reviewsCount: 145,
      rating: 3.8),
  Doctor(
      name: 'Dr. Bellamy',
      img: 'assets/doctors/Bitmap.png',
      isActive: false,
      speciality: 'Viralogist',
      reviewsCount: 145,
      rating: 3.8),
  Doctor(
      name: 'Dr. Bellamy',
      img: 'assets/doctors/Bitmap-3.png',
      isActive: false,
      speciality: 'Viralogist',
      reviewsCount: 145,
      rating: 3.8),
];
