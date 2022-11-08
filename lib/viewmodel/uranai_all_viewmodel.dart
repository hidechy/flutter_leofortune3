// ignore_for_file: avoid_dynamic_calls

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/http/client.dart';
import '../models/uranai.dart';
import '../state/uranai_all_state.dart';

//////////////////////////////////////////////////////
final uranaiAllProvider = StateNotifierProvider.autoDispose
    .family<UranaiAllNotifier, UranaiAllState, String>((ref, ym) {
  final client = ref.read(httpClientProvider);

  return UranaiAllNotifier(
    const UranaiAllState(record: []),
    client,
  )..getAllUranai(ym: ym);
});

class UranaiAllNotifier extends StateNotifier<UranaiAllState> {
  UranaiAllNotifier(super.state, this.client);

  final HttpClient client;

  Future<void> getAllUranai({required String ym}) async {
    await client.post(path: 'getGooUranai').then((value) {
      final list = <Uranai>[];
      for (var i = 0; i < int.parse(value['data'].length.toString()); i++) {
        final oneData = value['data'][i];

        final exDate = oneData['date'].toString().split('-');

        if ('${exDate[0]}-${exDate[1]}' == ym) {
          list.add(
            Uranai(
              date: DateTime.parse(oneData['date'].toString()),
              rank: oneData['rank'].toString(),
              uranaiAll: oneData['uranai_all'].toString(),
              pointAll: oneData['point_all'].toString(),
              uranaiLove: oneData['uranai_love'].toString(),
              pointLove: oneData['point_love'].toString(),
              uranaiMoney: oneData['uranai_money'].toString(),
              pointMoney: oneData['point_money'].toString(),
              uranaiWork: oneData['uranai_work'].toString(),
              pointWork: oneData['point_work'].toString(),
              uranaiHealth: oneData['uranai_health'].toString(),
              pointHealth: oneData['point_health'].toString(),
            ),
          );
        }
      }

      state = state.copyWith(record: list);
    });
  }
}

//////////////////////////////////////////////////////
