import 'package:auto_size_text/auto_size_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../consts/consts.dart';

class CustomButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String text;
  final Color? color;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: buildDecoration(
        color: color,
        radius: BorderRadius.circular(kDefaultSize.sp),
      ),
      child: Center(
          child: MaterialButton(
        minWidth: double.infinity,
        onPressed: onTap,
        child: AutoSizeText(
          text,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: kPrimaryTextColor, fontFamily: bold),
        ),
      )),
    );
  }
}
