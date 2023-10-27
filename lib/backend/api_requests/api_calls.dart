import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetTipoProcessoIdCall {
  static Future<ApiCallResponse> call({
    int? idBusca,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTipoProcessoId',
      apiUrl:
          'https://hguxgywwaauhyaxwzntj.supabase.co/rest/v1/tipo_processo?id=eq.${idBusca}&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhndXhneXd3YWF1aHlheHd6bnRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMjU1ODYsImV4cCI6MjAxMzkwMTU4Nn0.lkDDjuRjJ9ETfmKy8ox2KUl5FqWpCEq1TrmItNvobn4',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListaTipoProcessosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'listaTipoProcessos',
      apiUrl: 'https://hguxgywwaauhyaxwzntj.supabase.co/rest/v1/tipo_processo',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhndXhneXd3YWF1aHlheHd6bnRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMjU1ODYsImV4cCI6MjAxMzkwMTU4Nn0.lkDDjuRjJ9ETfmKy8ox2KUl5FqWpCEq1TrmItNvobn4',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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
