import 'package:aquameter/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../widget/settings/text.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: AppColor.bleu,
          middle: Text("Settings UI"),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColor.bleufatg,
          child: Column(
            children: [
              //Common
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 12),
                  Text(
                    "Common",style: GoogleFonts.inter(
      
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.2125,
        color: Color(0xff000000),
      ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: CupertinoColors.white,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.language,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          Texttitle1(text: "Language",),
                          Spacer(),
                          Texttitle1(
                           text: "English",
                          ),
                          SizedBox(width: 5),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.black,
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      width: double.infinity,
                      height: 38,
                      alignment: Alignment.center,
                      child: const Row(
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.cloud,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          Texttitle1(text:"Environment"),
                          Spacer(),
                          Texttitle1(text:
                            "Production",
                          ),
                          SizedBox(width: 5),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.black,
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Account
              const SizedBox(height: 14),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 12),
                  Texttitle2(
                    text: "Account",
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: CupertinoColors.white,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          Texttitle1(text:"Phone Number"),
                          Spacer(),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.black,
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          Texttitle1(text:"Email"),
                          Spacer(),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.black,
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                         Texttitle1(text:"Sign Out"),
                          Spacer(),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.black,
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Security
              const SizedBox(height: 14),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 12),
                 
                   Texttitle2(text:"Security",
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: CupertinoColors.white,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.phonelink_lock_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          Texttitle1(text:"Lock app in Background"),
                          Spacer(),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.fingerprint,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          Texttitle1(text:"Use Fingerprint"),
                          Spacer(),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          Texttitle1(text:"Change Password"),
                          Spacer(),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Misc
              const SizedBox(height: 14),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 12),
                 Texttitle2(text:
                    "Misc",
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: CupertinoColors.white,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.file_open_sharp,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                         Texttitle1(text:"Terms of Service"),
                          Spacer(),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.black,
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 38,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12),
                          Icon(
                            Icons.file_copy_sharp,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          Texttitle1(text:"Open Source Licenses"),
                          Spacer(),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.black,
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
