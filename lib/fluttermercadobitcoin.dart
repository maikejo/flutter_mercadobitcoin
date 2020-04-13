library fluttermercadobitcoin;
import 'dart:convert';

import 'package:dio/dio.dart';
import 'model/ticker.dart';

///Classe Principal
class MercadoBitcoin {

  //Retorna informações com o resumo das últimas 24 horas de negociações.
  Future<Ticker> getTicker() async {
    try {
      Response response = await Dio().get("https://www.mercadobitcoin.net/api/BTC/ticker");
      return Ticker.fromJson(response.data['ticker']);
    } catch (e) {
      print(e);
    }
  }

  //Lista de ofertas de compras, ordenadas do maior para o menor preço.
  Future getOverBook() async {
    try {
      Response response = await Dio().get("https://www.mercadobitcoin.net/api/BTC/orderbook");
      return response.data;
    } catch (e) {
      print(e);
    }
  }

  //Retorna informações Histórico de negociações realizadas.
  Future<Ticker> getTrades() async {
    try {
      Response response = await Dio().get("https://www.mercadobitcoin.net/api/BTC/trades");
      return Ticker.fromJson(response.data);
    } catch (e) {
      print(e);
    }
  }

}
