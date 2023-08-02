import 'package:fluttertask/index.dart';

class CustomButton2 extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomButton2({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 100.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff598BED)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 23,
              color: const Color(0xff598BED),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(color: Color(0xff598BED)),
            )
          ],
        ),
      ),
    );
  }
}
