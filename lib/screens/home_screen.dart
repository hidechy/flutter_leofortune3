import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/default_layout.dart';
import '../viewmodel/uranai_all_viewmodel.dart';
import 'components/rate_star.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exNow = DateTime.now().toString().split(' ');

    final ym = '${exNow[0].split('-')[0]}-${exNow[0].split('-')[1]}';

    final uranaiAllState = ref.watch(uranaiAllProvider(ym));

    final size = MediaQuery.of(context).size;

    return DefaultLayout(
      title: '',
      isTitleDisplay: false,
      widget: Column(
        children: [
          const SizedBox(height: 70),
          SizedBox(
            height: size.height * 0.9,
            child: ListView.separated(
              itemBuilder: (context, index) {
                final date =
                    uranaiAllState.record[index].date.toString().split(' ')[0];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(date),
                    Text(uranaiAllState.record[index].rank),
                    Text(uranaiAllState.record[index].uranaiAll),
                    RateStar(
                      rate: int.parse(uranaiAllState.record[index].pointAll),
                    ),
                    Text(uranaiAllState.record[index].uranaiLove),
                    RateStar(
                      rate: int.parse(uranaiAllState.record[index].pointLove),
                    ),
                    Text(uranaiAllState.record[index].uranaiMoney),
                    RateStar(
                      rate: int.parse(uranaiAllState.record[index].pointMoney),
                    ),
                    Text(uranaiAllState.record[index].uranaiWork),
                    RateStar(
                      rate: int.parse(uranaiAllState.record[index].pointWork),
                    ),
                    Text(uranaiAllState.record[index].uranaiHealth),
                    RateStar(
                      rate: int.parse(uranaiAllState.record[index].pointHealth),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.white.withOpacity(0.5),
                thickness: 2,
              ),
              itemCount: uranaiAllState.record.length,
            ),
          ),
        ],
      ),
    );
  }
}
