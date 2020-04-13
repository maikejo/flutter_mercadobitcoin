import 'package:flutter_mercadobitcoin/fluttermercadobitcoin.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test('Teste', () {
    final mercadoBitcoin = MercadoBitcoin();
    ///Busca Ticker webservice - MercadoBitcoin
    mercadoBitcoin.getTicker();
  });
}
