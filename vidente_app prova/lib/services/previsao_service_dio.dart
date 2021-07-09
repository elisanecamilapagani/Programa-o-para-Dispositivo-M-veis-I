import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vidente_app/models/previsao_hora.dart';
import 'package:vidente_app/utils/constants.dart';

class PrevisaoServiceDio {
  final Dio dio = Dio();

  Future<List<PrevisaoHora>> recuperarUltimasPrevisoes(String cityName) async {
    final String cityKey = await getCityKey(cityName);
    print(cityKey);

    dio.options.baseUrl = Constants.weatherPath.replaceFirst('{locationKey}', cityKey);
    dio.options.queryParameters = {
      'apikey': env['API_KEY'],
      'language': 'pt-BR',
      'metric': 'true',
    };

    try {
      final Response response = await dio.get('');
      List<PrevisaoHora> previsoes = [];

      for (final temp in response.data) {
        previsoes.add(PrevisaoHora.transformarJSON(temp));
      }

      print('Carregou novas previsoes');

      return previsoes;
    } catch (_) {
      print('recuperar previsões' + _.response);
      throw Exception('Falha ao carregar as previsões');
    }
  }

  Future<String> getCityKey(String cityName) async {
    dio.options.baseUrl = Constants.cityPath;
    dio.options.queryParameters = {
      'apikey': env['API_KEY'],
      'language': 'pt-BR',
      'q': cityName,
    };

    try {
      final Response response = await dio.get('');

      return response.data.first['Key'];
    } catch (_) {
      throw Exception('Falha ao carregar as previsões');
    }
  }
}
