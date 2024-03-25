class Doctor {
  final String id;
  final String email;
  final String name;
  final String category;
  final String address;
  final bool availability;
  final String bio;
  final String city;
  final String phone;
  final String schedule;
  final String image;
  final String license;
  final bool approved;
  final String language;

  Doctor({
    required this.language,
    required this.id,
    required this.email,
    required this.name,
    required this.category,
    required this.address,
    required this.availability,
    required this.bio,
    required this.city,
    required this.phone,
    required this.schedule,
    required this.image,
    required this.license,
    required this.approved,
  });

  factory Doctor.fromMap(Map<String, dynamic> data) {
    return Doctor(
      id: data['id'] ?? "",
      email: data['email'] ?? "",
      name: data['name'] ?? "",
      category: data['catagory'] ?? "",
      address: data['address'] ?? "",
      availability: data['availability'] ?? false,
      approved: data['approved'] ?? false,
      bio: data['bio'] ?? "",
      city: data['city'] ?? "",
      phone: data['phone'] ?? "",
      schedule: data['schedule'] ?? "",
      image: data['image'] ?? "",
      license: data['lic'] ?? "",
      language: data['lang'] ?? "",
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'catagory': category,
      'address': address,
      'availability': availability,
      'bio': bio,
      "approved": approved,
      'city': city,
      'phone': phone,
      'schedule': schedule,
      'image': image,
      'lic': license,
      'lang': language
    };
  }
}
