import '../index.dart';
import '../model/program_model.dart';

class ProgramCard extends StatelessWidget {
  final Program program;

  ProgramCard({required this.program});

  List<String> thumb = [
    'lib/asset/image/mother.png',
    'lib/asset/image/family.png',
  ];

  @override
  Widget build(BuildContext context) {
    final int repeatedIndex = (int.parse(program.id) - 1) % thumb.length;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60.w,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 3),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  thumb[repeatedIndex],
                  fit: BoxFit.fill,
                  width: 100.w,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    program.category,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Inter',
                      color: const Color(0xff598BED),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    program.name,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Inter',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '${program.lesson} lessons',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: 'Inter',
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
