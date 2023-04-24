 
import 'package:auto_size_text/auto_size_text.dart';

import '../../consts/consts.dart';

class CustomSmallText extends StatelessWidget {
  const CustomSmallText(
      {super.key, required this.text, required this.alignMent,this.textAlign});
  final String text;
  final AlignmentGeometry alignMent;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignMent,
      child: AutoSizeText(
        text,
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: Colors.blue, fontFamily: bold),textAlign: textAlign,
      ),
    );
  }
}
