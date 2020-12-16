import 'dart:convert';

class Token {
  final String jwtToken;

  const Token(this.jwtToken);

  Map<String, dynamic> toMap() {
    return {
      'jwtToken': jwtToken,
    };
  }

  factory Token.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Token(
      map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Token.fromJson(String source) => Token.fromMap(json.decode(source));

  @override
  String toString() => 'Token(token: $jwtToken)';
}
