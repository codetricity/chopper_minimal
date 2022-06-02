# Chopper Minimum Example

Minimal examples are useful to show the fundamental basic commands and syntax.

Chopper is an http client.

There are two examples:

1. chop.dart - goes to fake data server on the Internet and pulls down fake information from the API endpoint
2. theta.dart - must be connected to the RICOH THETA camera



## Use

### Fake Data Server on Internet

`dart bin/chop.dart` will pull a set of fake data posts from jsonplaceholder (free site)

### Connected by Wi-Fi to RICOH THETA Camera

```
dart .\bin\theta.dart
{api: [/osc/info, /osc/state, /osc/checkForUpdates, /osc/commands/execute, /osc/commands/status], apiLevel: [2], _bluetoothMacAddress: 58:38:79:46:F8:ED, endpoints: {httpPort: 80, httpUpdatesPort: 80}, firmwareVersion: 1.10.1, gps: true, gyro: true, manufacturer: Ricoh Company, Ltd., model: RICOH THETA X, serialNumber: 14010001, supportUrl: https://theta360.com/en/support/, uptime: 255, _wlanMacAddress: AC:12:03:D9:78:62}
```

## Concept

* `build_runner code generation`

## Development

![service file errors](docs/assets/service_file_errors.png)

### running build_runner

`dart run build_runner build`

![build runner](docs/assets/build_runner.png)


Errors are resolved.

![errors resolved](docs/assets/errors_resolved.png)

## Additional Information

https://github.com/codetricity/theta_bloc_chop

## Drill

1. create new dart project. Add chopper package
1. add `build_runner` and `chopper_generator` to dev dependencies
1. create `services` folder under lib.  Add `name_service.dart`.  For example
`placeholder_service`

### service file

1. import chopper
1. part 'name_service.chopper.dart` - will be in red
    * this is the same name as the file you are editing with the word `chopper` in it.
1. go to https://jsonplaceholder.typicode.com
    * go to the resources section and look for the `/posts` endpoint.  Use `/posts` as
    the endpoint in this example.
1. @ChopperApi(
    1. `baseUrl: '/endpoint'`
1. abstract class NameService extends ChopperService
1. inside of class `@Get()`
    1. `headers: {'Content-Type': 'application/json;charset-utf8'})`
1. `Future<Response> nameOfMethod()`
1. `static NameService create() {return _$NameService()}`
1. run `dart run build_runner build`
1. `name_service.chopper.dart` will automatically be created and all errors will be resolved

### using service

1. go to main file inside of `bin/`.  For example, it may be called, `bin/chopper_drill.dart`
1. create a new instance of `ChopperClient` with:
    1. `baseUrl`  NOTE: there is no slash `/` at the end of the baseUrl
    1. 'services: [NameService.create()]`  NOTE: this is a list and must be in square brackets.
1. assign variable to instance of `ChopperClient.getService<NameService>()`
1. get response with `await nameOfVariableGetService.nameOfMethod()` and assign to
variable `response`
1. print `response.body`
1. handle errors
