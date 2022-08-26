import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_bloc.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageBar extends StatelessWidget {
  const ImageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatBloc, CatState>(
      builder: (context, state) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        child: state.catInfo == null
            ? const CircularProgressIndicator()
            : Image.network(
                'https://cataas.com' + state.catInfo!.catImage.url!,
                fit: BoxFit.cover,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
