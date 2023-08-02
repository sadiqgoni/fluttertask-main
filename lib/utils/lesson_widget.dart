import 'package:provider/provider.dart';

import '../builder/lesson_provider.dart';
import '../index.dart';
import 'lesson_card.dart';

class LessonListView extends StatelessWidget {
  const LessonListView({super.key});
  @override
  Widget build(BuildContext context) {
    final lessonProvider = Provider.of<LessonProvider>(context);
    return lessonProvider.lessons.isNotEmpty
        ? ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: lessonProvider.lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessonProvider.lessons[index];
        return LessonCard(lesson: lesson);
      },
    )
        : const Center(
      child: CircularProgressIndicator(),
    );
  }
}
