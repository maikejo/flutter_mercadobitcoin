class Trades {
  int tid;
  int date;
  String type;
  int price;
  double amount;

  Trades({this.tid, this.date, this.type, this.price, this.amount});

  factory Trades.fromJson(Map<String, dynamic> json){
    return Trades(
      tid : json['tid'],
      date : json['date'],
      type : json['type'],
      price : json['price'],
      amount : json['amount']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tid'] = this.tid;
    data['date'] = this.date;
    data['type'] = this.type;
    data['price'] = this.price;
    data['amount'] = this.amount;
    return data;
  }
}