import 'package:chop/post_json_service.dart';
import 'package:chopper/chopper.dart';

void main() async {
  final chopper = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [PostJsonService.create()]);
  final getPostService = chopper.getService<PostJsonService>();
  var response = await getPostService.getPosts();
  if (response.isSuccessful) {
    print(response.body);
  } else {
    print(response.statusCode);
    print(response.error);
  }
}
