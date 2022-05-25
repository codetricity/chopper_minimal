// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theta_json_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ThetaJsonService extends ThetaJsonService {
  _$ThetaJsonService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ThetaJsonService;

  @override
  Future<Response<dynamic>> thetaInfo() {
    final $url = '/osc/info';
    final $headers = {
      'Content-Type': 'application/json;charset=utf8',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
