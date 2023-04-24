
import 'package:flutter_application_1/screens/random%20widget/randdom_background_view.dart';

import '../../consts/consts.dart';
import 'components/body.dart';

class CreateUserScreen extends StatelessWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundView(
      child: Scaffold(
        appBar: AppBar(),
        body: const Body(),
      ),
    );
  }
}
