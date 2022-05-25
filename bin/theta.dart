import 'package:chop/theta_json_service.dart';
import 'package:chopper/chopper.dart';

void main() async {
  final chopper = ChopperClient(
      baseUrl: 'http://192.168.1.1',
      services: [ThetaJsonService.create()],
      converter: const JsonConverter());
  final getPostService = chopper.getService<ThetaJsonService>();
  var response = await getPostService.thetaInfo();
  if (response.isSuccessful) {
    print(response.body);
  } else {
    print(response.statusCode);
    print(response.error);
  }
}
