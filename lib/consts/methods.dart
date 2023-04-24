import 'consts.dart';

BoxDecoration buildDecoration({
  color,radius,boxShadow,
}) {
  return BoxDecoration(color: color,borderRadius: radius,boxShadow: boxShadow);
}
ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: kPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      // border: InputBorder.none,
      labelStyle: const TextStyle(color: Colors.black45),
      iconColor: Colors.grey,
    ),
    scaffoldBackgroundColor: kTransparentColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: kTransparentColor,
    ),
  );
}