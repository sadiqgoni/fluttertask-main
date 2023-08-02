import 'package:fluttertask/utils/program_card.dart';
import 'package:provider/provider.dart';
import '../builder/category_provider.dart';
import '../index.dart';

class ProgramListView extends StatelessWidget {
  const ProgramListView({super.key});

  @override
  Widget build(BuildContext context) {
    final programProvider = Provider.of<ProgramProvider>(context);

    return programProvider.programs.isNotEmpty
        ? ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: programProvider.programs.length,
            itemBuilder: (context, index) {
              final program = programProvider.programs[index];
              return ProgramCard(program: program);
            },
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
