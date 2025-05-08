// video part 1 //

class Sample {
  final String? name;
  final int? age;
  final List<String>? hobby;
  final List<String>? kerjaan;
  final Github? github;
  final List<Article>? articles;

  Sample({this.name, this.age, this.hobby, this.kerjaan, this.github, this.articles});

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      name: json["name"] ?? '',
      age: json["age"] ?? 0,
      hobby: List<String>.from(json["hobby"] ?? []),
      kerjaan: List<String>.from(json["kerjaan"] ?? []),
      github: Github.fromJson(json["github"]),
      articles: List<Article>.from(json["articles"].map(
        (article) => Article.fromJson(article)
      ) ?? []),
    );
  }

  @override
  String toString() {
    return 'Sample(name: $name, age: $age, hobby: $hobby, kerjaan: $kerjaan, github: $github, articles: $articles)';
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

// vidio part 3 //

class Article {
  final int? id;
  final String? title;
  final String? subtitle;

  Article({this.id, this.title, this.subtitle});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article (
      id: json["id"] ?? 0,
      title: json["title"] ?? '',
      subtitle: json["subtitle"] ?? '',
    );
  }

  @override
  String toString() {
    return 'Article (id: $id, title: $title, subtitle: $subtitle)';
  }
}