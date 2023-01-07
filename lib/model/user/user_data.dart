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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['handle'] = this.handle;
    data['bio'] = this.bio;
    if (this.organizations != null) {
      data['organizations'] =
          this.organizations!.map((v) => v.toJson()).toList();
    }
    data['badge'] = this.badge;
    if (this.background != null) {
      data['background'] = this.background!.toJson();
    }
    data['profileImageUrl'] = this.profileImageUrl;
    data['solvedCount'] = this.solvedCount;
    data['voteCount'] = this.voteCount;
    data['class'] = this.classRank;
    data['classDecoration'] = this.classDecoration;
    data['tier'] = this.tier;
    data['rating'] = this.rating;
    data['ratingByProblemsSum'] = this.ratingByProblemsSum;
    data['ratingByClass'] = this.ratingByClass;
    data['ratingBySolvedCount'] = this.ratingBySolvedCount;
    data['ratingByVoteCount'] = this.ratingByVoteCount;
    data['exp'] = this.exp;
    data['rivalCount'] = this.rivalCount;
    data['reverseRivalCount'] = this.reverseRivalCount;
    data['maxStreak'] = this.maxStreak;
    data['rank'] = this.rank;
    return data;
  }
}
