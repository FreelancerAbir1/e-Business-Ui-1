import '../../consts/consts.dart';
import 'components/body.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/homescreen';
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:  Body(),
    );
  }
}
