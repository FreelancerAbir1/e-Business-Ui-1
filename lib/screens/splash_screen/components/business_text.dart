
import '../../../consts/consts.dart';

class BusinessText extends StatelessWidget {
  const BusinessText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelLarge!.copyWith(fontFamily: bold),
    );
  }
}
