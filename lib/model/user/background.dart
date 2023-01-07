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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['backgroundId'] = backgroundId;
    data['backgroundImageUrl'] = backgroundImageUrl;
    data['author'] = author;
    data['authorUrl'] = authorUrl;
    data['displayName'] = displayName;
    data['displayDescription'] = displayDescription;
    return data;
  }
}
