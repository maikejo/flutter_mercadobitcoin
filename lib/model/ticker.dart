class Ticker {
  String high;
  String low;
  String vol;
  String last;
  String buy;
  String sell;
  String open;
  int date;

  Ticker(
      {this.high,
        this.low,
        this.vol,
        this.last,
        this.buy,
        this.sell,
        this.open,
        this.date});

  factory Ticker.fromJson(Map<String, dynamic> json){
    return Ticker(
        high : json['high'],
        low : json['low'],
        vol : json['vol'],
        last : json['last'],
        buy : json['buy'],
        sell : json['sell'],
        open : json['open'],
        date : json['date']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> model = new Map<String, dynamic>();
    model['high'] = this.high;
    model['low'] = this.low;
    model['vol'] = this.vol;
    model['last'] = this.last;
    model['buy'] = this.buy;
    model['sell'] = this.sell;
    model['open'] = this.open;
    model['date'] = this.date;
    return model;
  }
}