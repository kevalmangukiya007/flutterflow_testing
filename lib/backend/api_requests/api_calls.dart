import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GuestRegisterCall {
  static Future<ApiCallResponse> call() {
    final ffApiRequestBody = '''
{
    "uniqueCode" : "zzzz"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'guestRegister',
      apiUrl: 'https://prod-findgift.api.workgate.co.uk/auth/guest/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GuestLoginCall {
  static Future<ApiCallResponse> call() {
    final ffApiRequestBody = '''
{
  "uniqueCode": "zzzz"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'guestLogin',
      apiUrl: 'https://prod-findgift.api.workgate.co.uk/auth/guest/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJraWQiOiJqQ0ZmSys4SHA4TExPRTA3MFFMMVNWaU1mc0NHRnJSWnIwS3M2QTN6Mk93PSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiIzYjIyZWMwZC1kYTZjLTQ2OGItYWFmNS02NTdkMzNiNmJhNzMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLmV1LXdlc3QtMS5hbWF6b25hd3MuY29tXC9ldS13ZXN0LTFfR3gwbnJvVlRrIiwiY3VzdG9tOnVzZXJUaWVyIjoiRnJlZSIsImNvZ25pdG86dXNlcm5hbWUiOiIzYjIyZWMwZC1kYTZjLTQ2OGItYWFmNS02NTdkMzNiNmJhNzMiLCJvcmlnaW5fanRpIjoiZDc1ZGQwNGEtOTMyNC00ZjU4LTgxMTAtNjYyYzEzOWFlNjVlIiwiY3VzdG9tOmNoYXRDb3VudCI6IjAiLCJhdWQiOiI2cWhvYmd2Y3JvdTRkZDl0MHJkNGtjbHE1MiIsImV2ZW50X2lkIjoiMWVhMWFiNGItMDYwNi00OTM5LWFiOTMtNzA0Y2NjYWZmNTBkIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2OTcwMjMzODAsImN1c3RvbTpwb2VwbGVDb3VudCI6IjEiLCJleHAiOjE2OTcwMjY5ODAsImN1c3RvbTpyb2xlIjoiZ3Vlc3QiLCJpYXQiOjE2OTcwMjMzODAsImp0aSI6ImUzOTg1MDg0LWRhMjQtNDFhNS1iMWM1LTFmNTQ4NjM3MWI3NyIsImVtYWlsIjoienp6ekBtYWlsLmNvbSJ9.X8A06oPPITq5r-yXmblOdtKDjqdwKb7-ZYQ6-KmUcVxGsr-ixNO6_Kv8OxbvgctXGGxEBp_Twm6vIsFXlFBTjdtXcdjgbA0QKc4B-YkDCmOw8CS00az7hDxRprj7B86hQ1HWIm_Xet1EphdBChHhQEljr6G9yoenHxhhDnAQo8Xs_sWpQZLLe7kJwmHTMbjo0pL7wJu4C7Y8IjmsajF4q_AlsHTNazWWZgTtRP82xeb9OrfW_cVAtDBQgJn0ngJj-BzmgAP6FvJZ-8Llmd4E8LppovKfSEz7nRZrsnHY8hKRX4jxsxz2gUXAMR0m2HkRUDT5V-x060X-RRGwohAblA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic custom(dynamic response) => getJsonField(
        response,
        r'''$['message']''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
