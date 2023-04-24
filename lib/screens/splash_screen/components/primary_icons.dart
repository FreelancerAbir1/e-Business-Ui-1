
import '../../../consts/consts.dart';

class PrimaryIcons extends StatelessWidget {
  const PrimaryIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(05),
      decoration: buildDecoration(
        color: kLightColor,
        radius: BorderRadius.circular(10),
      ),
      child: Image.asset(primaryLogo),
    );
  }
}
