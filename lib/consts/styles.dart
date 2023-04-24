import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
const regular = "regular";
const semibold = "semibold";
const bold = "bold";
const kDefaultSize = 21;
//Instance here
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference usersDataCollection = FirebaseFirestore.instance.collection('userData').doc().collection(auth.currentUser!.uid);
final Stream<User?> authInstance = auth.authStateChanges();
//Easy loading method
/*
EasyLoading.show(status: 'loading...');

EasyLoading.showProgress(0.3, status: 'downloading...');

EasyLoading.showSuccess('Great Success!');

EasyLoading.showError('Failed with Error');

EasyLoading.showInfo('Useful Information.');

EasyLoading.showToast('Toast');

EasyLoading.dismiss();
   */