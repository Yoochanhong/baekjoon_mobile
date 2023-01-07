import 'dart:core';
import 'package:baekjoon_mobile/model/user/organizations.dart';
import 'package:baekjoon_mobile/model/user/background.dart';
import 'package:baekjoon_mobile/model/user/badge.dart';

class UserData {
  String? handle;
  String? bio;
  List<Organizations>? organizations;
  Badge? badge;
  Background? background;
  String? profileImageUrl;
  int? solvedCount;
  int? voteCount;
  int? exp;
  int? tier;
  int? rating;
  int? ratingByProblemsSum;
  int? ratingByClass;
  int? ratingBySolvedCount;
  int? ratingByVoteCount;
  int? classRank;
  String? classDecoration;
  int? rivalCount;
  int? reverseRivalCount;
  int? maxStreak;
  int? rank;
  bool? isRival;
  bool? isReverseRival;

  UserData(
      {this.handle,
      this.bio,
      this.organizations,
      this.badge,
      this.background,
      this.profileImageUrl,
      this.solvedCount,
      this.voteCount,
      this.classRank,
      this.classDecoration,
      this.tier,
      this.rating,
      this.ratingByProblemsSum,
      this.ratingByClass,
      this.ratingBySolvedCount,
      this.ratingByVoteCount,
      this.exp,
      this.rivalCount,
      this.reverseRivalCount,
      this.maxStreak,
      this.rank});

  UserData.fromJson(Map<String, dynamic> json) {
    handle = json['handle'];
    bio = json['bio'];
    if (json['organizations'] != null) {
      organizations = <Organizations>[];
      json['organizations'].forEach((v) {
        organizations!.add(Organizations.fromJson(v));
      });
    }
    badge = json['badge'] != null ? Badge.fromJson(json['badge']) : null;
    background = json['background'] != null
        ? Background.fromJson(json['background'])
        : null;
    profileImageUrl = json['profileImageUrl'];
    solvedCount = json['solvedCount'];
    voteCount = json['voteCount'];
    classRank = json['class'];
    classDecoration = json['classDecoration'];
    tier = json['tier'];
    rating = json['rating'];
    ratingByProblemsSum = json['ratingByProblemsSum'];
    ratingByClass = json['ratingByClass'];
    ratingBySolvedCount = json['ratingBySolvedCount'];
    ratingByVoteCount = json['ratingByVoteCount'];
    exp = json['exp'];
    rivalCount = json['rivalCount'];
    reverseRivalCount = json['reverseRivalCount'];
    maxStreak = json['maxStreak'];
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['handle'] = handle;
    data['bio'] = bio;
    if (organizations != null) {
      data['organizations'] = organizations!.map((v) => v.toJson()).toList();
    }
    data['badge'] = badge;
    if (background != null) data['background'] = background!.toJson();
    data['profileImageUrl'] = profileImageUrl;
    data['solvedCount'] = solvedCount;
    data['voteCount'] = voteCount;
    data['class'] = classRank;
    data['classDecoration'] = classDecoration;
    data['tier'] = tier;
    data['rating'] = rating;
    data['ratingByProblemsSum'] = ratingByProblemsSum;
    data['ratingByClass'] = ratingByClass;
    data['ratingBySolvedCount'] = ratingBySolvedCount;
    data['ratingByVoteCount'] = ratingByVoteCount;
    data['exp'] = exp;
    data['rivalCount'] = rivalCount;
    data['reverseRivalCount'] = reverseRivalCount;
    data['maxStreak'] = maxStreak;
    data['rank'] = rank;
    return data;
  }
}
