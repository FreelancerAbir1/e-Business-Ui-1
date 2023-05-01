import '../../../consts/consts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundView(
      child: Scaffold(
        body: ListView(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: kTextColor,
                ),
              ),
            ),
            ListTile(
                leading: ClipOval(
                    child: Image.asset(
                        'assets/images/profile_image_joya_ahsan.jpg')),
                title: const Text('Abirul Islam Abir'),
                subtitle: const Text('Flutter Developer'),
                trailing: OutlinedButton(
                    onPressed: () {}, child: const Text(logOut))),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  color: kBlue,
                  height: 100,
                  width: 100,
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  color: kBlue,
                  height: 100,
                  width: 100,
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  color: kBlue,
                  height: 100,
                  width: 100,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
