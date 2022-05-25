import "dart:async";
import "package:chopper/chopper.dart";

part 'post_json_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostJsonService extends ChopperService {
  @Get()
  Future<Response> getPosts();

  static PostJsonService create() {
    return _$PostJsonService();
  }
}
