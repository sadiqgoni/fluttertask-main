import 'package:provider/provider.dart';

import '../builder/category_provider.dart';
import '../builder/lesson_provider.dart';
import '../index.dart';
import '../utils/event_widget.dart';
import '../utils/lesson_widget.dart';
import '../utils/program_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    final programProvider =
        Provider.of<ProgramProvider>(context, listen: false);
    final lessonProvider = Provider.of<LessonProvider>(context, listen: false);
    programProvider.fetchData();
    lessonProvider.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(32.h),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xffeef3fd),
          leading: const Text(''),
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'lib/asset/image/meenu.png',
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.question_answer_outlined,
                            size: 25, color: Colors.grey[600]),
                        const SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.notifications_outlined,
                            size: 25, color: Colors.grey[600]),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Hello, Priya!',
                  style: TextStyle(
                      color: const Color(0xff08090A),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Lora'),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'What do you wanna learn today?',
                  style: TextStyle(
                      color: const Color(0xff6D747A),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        image: 'lib/asset/image/bookmark.png',
                        title: 'Programs',
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: CustomButton2(
                        icon: Icons.help,
                        title: 'Get Help',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: CustomButton2(
                        icon: Icons.menu_book_rounded,
                        title: 'Learn',
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: CustomButton(
                        image: 'lib/asset/image/trelloo.png',
                        title: 'DD Tracker',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Programs for you',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Lora'),
                      ),
                      Row(
                        children: [
                          Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6D747A),
                                fontFamily: 'Inter'),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Color(0xff6D747A),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: ProgramListView(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Events and experiences',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Lora'),
                      ),
                      Row(
                        children: [
                          Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6D747A),
                                fontFamily: 'Inter'),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Color(0xff6D747A),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: LessonListView(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lessons for you',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Lora',
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'View all',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6D747A),
                              fontFamily: 'Inter',
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Color(0xff6D747A),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: EventListView(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBottomBar(
                  isSelected: currentIndex == 0,
                  title: 'Home',
                  icon: Icons.home,
                  onTap: () => onTabTapped(0),
                ),
                CustomBottomBar(
                  isSelected: currentIndex == 1,
                  title: 'Learn',
                  icon: Icons.menu_book_rounded,
                  onTap: () => onTabTapped(1),
                ),
                CustomBottomBar(
                  isSelected: currentIndex == 2,
                  title: 'Hub',
                  icon: Icons.apps_rounded,
                  onTap: () => onTabTapped(2),
                ),
                CustomBottomBar(
                  isSelected: currentIndex == 3,
                  title: 'Chat',
                  icon: Icons.chat_bubble_outline_rounded,
                  onTap: () => onTabTapped(3),
                ),
                CustomBottomBar(
                  isSelected: currentIndex == 3,
                  title: 'Profile',
                  icon: Icons.chat_bubble_outline_rounded,
                  onTap: () => onTabTapped(3),
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 100.00 * currentIndex,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color(0xff598BED),
                ),
                width: 100,
                height: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
