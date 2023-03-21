import 'package:http/http.dart' as http;

import '../../core/constants/const.dart';

class RemoteRecommendService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/recommends';

  Future<dynamic> get() async {
    var response = await client.get(Uri.parse(
        '$remoteUrl?populate=courses.image&pagination[page]=1&pagination[pageSize]=5'));
    return response;
  }
}
