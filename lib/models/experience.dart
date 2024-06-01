class Experience {
  final String title;
  final String company;
  final String duration;
  final String location;
  final String skills;

  Experience({
    required this.title,
    required this.company,
    required this.duration,
    required this.location,
    required this.skills,
  });

  factory Experience.fromJson(Map<String, dynamic> json) {
    return Experience(
      title: json['title'],
      company: json['company'],
      duration: json['duration'],
      location: json['location'],
      skills: json['skills'],
    );
  }
}
