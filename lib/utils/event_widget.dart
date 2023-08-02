import 'package:fluttertask/utils/event_card.dart';
import 'package:provider/provider.dart';

import '../builder/lesson_provider.dart';
import '../index.dart';
import 'lesson_card.dart';

class EventListView extends StatelessWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context) {
    final lessonProvider = Provider.of<LessonProvider>(context);
    return lessonProvider.lessons.isNotEmpty
        ? ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: lessonProvider.lessons.length,
            itemBuilder: (context, index) {
              final lesson = lessonProvider.lessons[index];
              return EventCard(event: lesson);
            },
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
