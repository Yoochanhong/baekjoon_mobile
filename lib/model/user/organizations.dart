class Organizations {
  int? organizationId;
  String? name;
  String? type;
  int? rating;
  int? userCount;
  int? voteCount;
  int? solvedCount;
  String? color;

  Organizations(
      {this.organizationId,
      this.name,
      this.type,
      this.rating,
      this.userCount,
      this.voteCount,
      this.solvedCount,
      this.color});

  Organizations.fromJson(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    name = json['name'];
    type = json['type'];
    rating = json['rating'];
    userCount = json['userCount'];
    voteCount = json['voteCount'];
    solvedCount = json['solvedCount'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['organizationId'] = organizationId;
    data['name'] = name;
    data['type'] = type;
    data['rating'] = rating;
    data['userCount'] = userCount;
    data['voteCount'] = voteCount;
    data['solvedCount'] = solvedCount;
    data['color'] = color;
    return data;
  }
}
