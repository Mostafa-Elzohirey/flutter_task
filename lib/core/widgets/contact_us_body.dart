import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/custom_contact_item.dart';
import 'package:flutter_task/routes/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                CustomContactItem(
                  label: 'Customer Support',
                  icon: Icon(
                    Icons.support_agent_outlined,
                    size: 28,
                    color: Colors.black,
                  ),
                  contactOption: Text("data"),
                  onTap: () {
                    Get.toNamed(Routes.chatView);
                  },
                ),
                CustomContactItem(
                  label: 'Website',
                  icon: Icon(
                    Icons.language_outlined,
                    size: 28,
                    color: Colors.black,
                  ),
                  contactOption: Text("Official Website"),
                  onTap: () {
                    _launchURL('https://www.google.com');
                  },
                ),
                CustomContactItem(
                  label: 'Facebook',
                  icon: Icon(
                    Icons.facebook_outlined,
                    size: 28,
                    color: Colors.black,
                  ),
                  contactOption: Text("data"),
                  onTap: () {
                    _launchURL('https://www.facebook.com');
                  },
                ),
                CustomContactItem(
                  label: 'Whatsapp',
                  icon: Icon(
                    FontAwesomeIcons.whatsapp,
                    size: 28,
                    color: Colors.black,
                  ),
                  contactOption: Text('Whatsapp Chat'),
                  onTap: () {
                    _launchURL('https://www.whatsapp.com');
                  },
                ),
                CustomContactItem(
                  label: 'Instagram ',
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    size: 28,
                    color: Colors.black,
                  ),
                  contactOption: Text("Instagram page"),
                  onTap: () {
                    _launchURL('https://www.instagram.com');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchURL(String link) async {
    final Uri url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
