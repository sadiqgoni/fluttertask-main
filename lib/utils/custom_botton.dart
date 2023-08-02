import 'package:fluttertask/index.dart';

class CustomButton extends StatelessWidget {
  final String image;
  final String title;
  const CustomButton({
    super.key,
    required this.image,
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
            Image.asset(image),
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
