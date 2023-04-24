import 'package:auto_size_text/auto_size_text.dart';

import '../../consts/consts.dart';

class CustomLargeText extends StatelessWidget {
  const CustomLargeText({
    super.key,
    required this.text,
    required this.color  ,
  });
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      "$text!",
      style: Theme.of(context)
          .textTheme
          .headlineSmall!
          .copyWith(fontFamily: bold, color: color),
    );
  }
}
