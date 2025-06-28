import 'package:flutter_task/modules/profile/views/chat_view.dart';
import 'package:flutter_task/modules/profile/views/help_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/profile/views/home_view.dart';

class Routes {
  static String homeView = '/homeView';
  static String helpView = '/mainView';
  static String chatView = '/chatView';
}

/// Add this list variable into your GetMaterialApp as the value of getPages parameter.
/// You can get the reference to the above GetMaterialApp code.
final getPages = [
  GetPage(name: Routes.homeView, page: () => const HomeView()),
  GetPage(name: Routes.helpView, page: () => const HelpView()),
  GetPage(name: Routes.chatView, page: () => const ChatView()),
];
