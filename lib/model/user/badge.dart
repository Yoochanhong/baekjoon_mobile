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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backgroundId'] = this.badgeId;
    data['backgroundImageUrl'] = this.badgeImageUrl;
    data['displayName'] = this.displayName;
    data['displayDescription'] = this.displayDescription;
    return data;
  }
}
