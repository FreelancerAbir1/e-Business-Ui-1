
import '../../consts/consts.dart';

class BackgroundView extends StatelessWidget {
  final Widget child;
  const BackgroundView({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgImage),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: child,
    );
  }
}