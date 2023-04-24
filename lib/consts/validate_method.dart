import 'package:flutter_application_1/consts/consts.dart';
 String? validateEmail(String? value) {
  const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  final regex = RegExp(pattern);
  if (!regex.hasMatch(value!)) {
    return 'Enter a valid email address';
  } else if (value.isEmpty) {
    return 'Black field not allow';
  }
  return null;
}
String? validatePassword(String? value) {
  // RegExp regex =
  //     RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  var passNonNullValue = value ?? "";
  if (passNonNullValue.isEmpty) {
    EasyLoading.dismiss();
    return ("Password is required");
  } else if (passNonNullValue.length <= 5) {
    EasyLoading.dismiss();
    return ("Password Must be more than 6 characters");
    // } else if (!regex.hasMatch(passNonNullValue)) {
    //   return ("Password should contain upper,lower,digit and Special character ");
  }
  return null;
}
String? validateMobile(String? value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = RegExp(patttern);
  if (value!.isEmpty) {
    EasyLoading.dismiss();
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    EasyLoading.dismiss();
    return 'Please enter valid mobile number';
  }
  return null;
}
String? validateName(String? fullName) {
  String patttern = r'^[a-z A-Z,.\-]+$';
  RegExp regExp = RegExp(patttern);
  if (fullName!.isEmpty) {
    EasyLoading.dismiss();
    return 'Please enter full name';
  } else if (!regExp.hasMatch(fullName)) {
    EasyLoading.dismiss();
    return 'Please enter valid full name';
  }
  return null;
}
OutlineInputBorder oulineInpuBorder() {
  return OutlineInputBorder( gapPadding: 5.0,
    borderRadius: BorderRadius.circular(10),
  );
}