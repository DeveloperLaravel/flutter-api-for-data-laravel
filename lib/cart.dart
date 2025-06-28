class Cart {
  String? title;
  int? id;
  String? content;

  Cart({this.title, this.id, this.content});

  Cart.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id'] = this.id;
    data['content'] = this.content;
    return data;
  }
}
