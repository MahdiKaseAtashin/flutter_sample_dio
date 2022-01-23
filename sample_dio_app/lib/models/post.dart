import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        userId: json['userId'] as int?,
        id: json['id'] as int?,
        title: json['title'] as String?,
        body: json['body'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [userId, id, title, body];

  static List<Post> listFromJson(List<dynamic> list) =>
      List<Post>.from(list.map((e) => Post.fromJson(e)));
}
