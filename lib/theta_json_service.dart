import "dart:async";
import "package:chopper/chopper.dart";

part 'theta_json_service.chopper.dart';

@ChopperApi(baseUrl: '/osc')
abstract class ThetaJsonService extends ChopperService {
  @Get(
      path: '/info', headers: {'Content-Type': 'application/json;charset=utf8'})
  Future<Response> thetaInfo();

  static ThetaJsonService create() {
    return _$ThetaJsonService();
  }
}
