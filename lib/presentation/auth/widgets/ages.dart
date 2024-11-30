import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/ages_display_cubit.dart';
import '../bloc/ages_display_state.dart';

class Ages extends StatelessWidget {
  const Ages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      child: BlocBuilder<AgesDisplayCubit, AgesDisplayState>(
        builder: (context, state) {
          if (state is AgesLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is AgesLoaded) {
            return _ages(state.ages);
          }
          if (state is AgesLoadFailure) {
            return Center(
              child: Text(
                state.message,
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }

  Widget _ages(List<QueryDocumentSnapshot<Map<String, dynamic>>> ages) {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      // itemBuilder: (context, index) => Text(ages[index].data()['value']),
      itemBuilder: (context, index) {
        return Text(ages[index].data()['value'],
            style: TextStyle(
              fontSize: 18,
            ));
      },
      separatorBuilder: (context, index) => SizedBox(height: 20),
      itemCount: ages.length,
    );
  }
}
