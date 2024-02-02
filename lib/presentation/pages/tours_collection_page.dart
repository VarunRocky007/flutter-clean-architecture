import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_application/di/app_provider.dart';
import 'package:sample_application/domain/repository/app_repository.dart';
import 'package:sample_application/presentation/cubit/tours_collection_page_cubit.dart';
import 'package:sample_application/presentation/cubit/tours_collection_state.dart';

class ToursCollectionPage extends StatefulWidget {
  const ToursCollectionPage({super.key});

  @override
  State<ToursCollectionPage> createState() {
    return _ToursCollectionPageState();
  }
}

class _ToursCollectionPageState extends State<ToursCollectionPage> {
  late ToursCollectionPageCubit toursCollectionPageCubit;

  @override
  void initState() {
    toursCollectionPageCubit =
        ToursCollectionPageCubit(appRepository: getIt<AppRepository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ToursCollectionPageCubit, ToursCollectionPageState>(
        bloc: toursCollectionPageCubit,
        builder: (ctx, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text((state is ToursCollectionPageSuccessState)
                    ? "Success"
                    : "Failed"),
                ElevatedButton(
                  onPressed: () {
                    toursCollectionPageCubit.getTours();
                  },
                  child: const Text("Call API"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
