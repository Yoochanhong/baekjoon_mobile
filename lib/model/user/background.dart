class Background {
  String? backgroundId;
  String? backgroundImageUrl;
  String? author;
  String? authorUrl;
  String? displayName;
  String? displayDescription;

  Background({
    this.backgroundId,
    this.backgroundImageUrl,
    this.author,
    this.authorUrl,
    this.displayName,
    this.displayDescription,
  });

  Background.fromJson(Map<String, dynamic> json) {
    backgroundId = json['backgroundId'];
    backgroundImageUrl = json['backgroundImageUrl'];
    author = json['author'];
    authorUrl = json['authorUrl'];
    displayName = json['displayName'];
    displayDescription = json['displayDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backgroundId'] = this.backgroundId;
    data['backgroundImageUrl'] = this.backgroundImageUrl;
    data['author'] = this.author;
    data['authorUrl'] = this.authorUrl;
    data['displayName'] = this.displayName;
    data['displayDescription'] = this.displayDescription;
    return data;
  }
}
