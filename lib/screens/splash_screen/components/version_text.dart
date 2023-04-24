
import '../../../consts/consts.dart';

class VersionText extends StatelessWidget {
  const VersionText({
    super.key,
    required this.appversion,
  });
  final String appversion;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        appversion,
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
