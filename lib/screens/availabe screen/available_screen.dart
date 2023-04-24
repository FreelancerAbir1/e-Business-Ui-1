import '../../consts/consts.dart';

class AvailableScreen extends StatelessWidget {
  const AvailableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightColor,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text('Available For',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: kBlue,
                        fontFamily: bold,
                      )),
              Image.asset(
               iosLogo,
                height: 200,
              ),
              Text('&',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: kTextColor,
                        fontFamily: bold,
                      )),
              Image.asset(
               androidLogo,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
