import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/account_subsection.dart';
import 'package:flutter_task/core/widgets/general_subsection.dart';

import 'services_subsection.dart';

class GetScreen extends StatelessWidget {
  const GetScreen({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return const GeneralSubsection(key: ValueKey('general'),);
      case 1:
        return const AccountSubsection(key: ValueKey('account'),);
      case 2:
        return const ServicesSubSection(key: ValueKey('services'),);
      default:
        return const GeneralSubsection();
    }
  }
}
