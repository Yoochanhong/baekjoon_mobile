class Badge {
  String? badgeId;
  String? badgeImageUrl;
  String? displayName;
  String? displayDescription;

  Badge({
    this.badgeId,
    this.badgeImageUrl,
    this.displayName,
    this.displayDescription,
  });

  Badge.fromJson(Map<String, dynamic> json) {
    badgeId = json['badgeId'];
    badgeImageUrl = json['badgeImageUrl'];
    displayName = json['displayName'];
    displayDescription = json['displayDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['backgroundId'] = badgeId;
    data['backgroundImageUrl'] = badgeImageUrl;
    data['displayName'] = displayName;
    data['displayDescription'] = displayDescription;
    return data;
  }
}
