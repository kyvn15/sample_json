// video part 1 //

class Sample {
  final String? name;
  final int? age;
  final List<String>? hobby;
  final List<String>? kerjaan;
  final Github? github;

  Sample({this.name, this.age, this.hobby, this.kerjaan, this.github});

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      name: json["name"] ?? '',
      age: json["age"] ?? 0,
      hobby: List<String>.from(json["hobby"] ?? []),
      kerjaan: List<String>.from(json["kerjaan"] ?? []),
      github: Github.fromJson(json["github"]),
    );
  }

  @override
  String toString() {
    return 'Sample(name: $name, age: $age, hobby: $hobby, kerjaan: $kerjaan, github: $github)';
  }
}


// video part 2 //

class Github {
  final String? username;
  final int? repositories;
  final bool? isGDE;

  Github({required this.username, this.repositories, this.isGDE});

  factory Github.fromJson(Map<String, dynamic> json) {
    return Github(
      username: json["username"],
      repositories: json["repositories"],
      isGDE: json["isGDE"],
    );
  }

  @override
  String toString() {
    return 'Github(username: $username, repositories: $repositories, isGDE: $isGDE)';
  }
}
