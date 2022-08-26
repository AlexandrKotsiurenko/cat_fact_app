import 'package:cat_facts_randomizer/facts_page/domain/network/cat_info.dart';
import 'package:cat_facts_randomizer/facts_page/domain/network/rest_client.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_events.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class CatBloc extends Bloc<CatEvents, CatState> {
  CatBloc(initialState) : super(initialState) {
    on<GetCatDataEvent>(
      (event, emit) async {
        final image =
            (await RestClient.instance.imageRestClient.getImage(true));
        final fact = (await RestClient.instance.factsRestClient.getFacts());
        final catInfo = CatInfo(
          catImage: image,
          catFact: fact,
          factDate: DateTime.now(),
        );
        Hive.box<CatInfo>('catInfo').add(catInfo);
        emit(
          CatState(catInfo: catInfo),
        );
      },
    );
  }
}
