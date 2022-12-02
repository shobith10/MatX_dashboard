import 'package:dashboard_application/src/components/styles/cards.dart';
import 'package:dashboard_application/src/components/styles/colors.dart';
import 'package:dashboard_application/src/components/styles/text_styles.dart';
import 'package:dashboard_application/src/components/textfields/login_textfield.dart';
import 'package:dashboard_application/src/components/widgets/sized.dart';
import 'package:dashboard_application/src/dashboard/view/dashboard_view.dart';
import 'package:dashboard_application/src/login/login_controller.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  static const routeName = '/login';
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final controller = context.watch<LoginContoller>();
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Container(
              width: width < 350 ? 320 : 350,
              height: width > 790 ? 370 : 280,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(15),
                      topRight: width > 790
                          ? const Radius.circular(0)
                          : const Radius.circular(15),
                      bottomLeft: width > 790
                          ? const Radius.circular(15)
                          : const Radius.circular(0),
                      bottomRight: const Radius.circular(0)),
                  gradient: LinearGradient(
                      colors: [
                        primaryColor,
                        primaryLite,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: const [0.0, 1.0],
                      tileMode: TileMode.clamp),
                  boxShadow: [BoxShadow(color: geryColor, blurRadius: 0.5)]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MatX Pro",
                    style: style30white,
                  ),
                  sizedBoxh15,
                  Text(
                    "Admin Dashboard",
                    style: style23white,
                  ),
                  sizedBoxh25,
                  bulletText(text: 'JWT, Firebase & Auth0 Authentication'),
                  sizedBoxh15,
                  bulletText(text: 'Clean & Organised code'),
                  sizedBoxh15,
                  bulletText(text: 'Limitless Pages & Components')
                ],
              ),
            ),
            Container(
              width: width < 350 ? 320 : 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(0),
                      topRight: width > 790
                          ? const Radius.circular(15)
                          : const Radius.circular(0),
                      bottomLeft: width > 790
                          ? const Radius.circular(0)
                          : const Radius.circular(15),
                      bottomRight: const Radius.circular(15)),
                  color: whiteColor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: geryColor.withOpacity(0.2),
                        borderRadius: borderRadius10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/googlelogo.png',
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sign in With Google',
                            style: style18white.copyWith(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: geryColor.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        ' Or ',
                        style: style15greyLite,
                      ),
                      Expanded(
                        child: Divider(
                          color: geryColor.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LoginTextField(
                          hintText: 'email',
                          controller: controller.email,
                          keyboardType: TextInputType.emailAddress,
                          lableText: 'Email',
                        ),
                        sizedBoxh15,
                        LoginTextField(
                          hintText: 'password',
                          lableText: 'Password',
                          controller: controller.password,
                          isObscure: !controller.showPassword,
                          keyboardType: TextInputType.visiblePassword,
                          suffixIcon: InkWell(
                            onTap: () {
                              controller.showOrHidePassword();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Icon(
                                controller.showPassword
                                    ? FluentIcons.eye_16_regular
                                    : FluentIcons.eye_off_16_regular,
                                color: const Color(0xff60778C),
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                        sizedBoxh15,
                        Row(
                          children: [
                            Transform.scale(
                                scale: 1,
                                child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  side: MaterialStateBorderSide.resolveWith(
                                    (states) => BorderSide(
                                        width: 1.0, color: geryColor),
                                  ),
                                  focusColor: whiteColor,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  activeColor: primaryColor,
                                  checkColor: whiteColor,
                                  value: controller.isRememberMe,
                                  onChanged: (v) {
                                    controller.changeRememberMe();
                                  },
                                )),
                            const Text('Remember me',
                                style: TextStyle(
                                  color: Color(0xffAAA6B9),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                )),
                            const Spacer(),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    color: Color(0xff0D0140),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                )),
                          ],
                        ),
                        sizedBoxh15,
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DashBoardView.routeName);
                          },
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  color: primaryLite,
                                  borderRadius: borderRadius10),
                              child: Text(
                                'Login',
                                style:
                                    style15greyLite.copyWith(color: whiteColor),
                              )),
                        ),
                        sizedBoxh15,
                        Row(
                          children: [
                            const Text('Dont have an account?'),
                            Text(
                              'Register',
                              style:
                                  style15greyLite.copyWith(color: primaryLite),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bulletText({String? text}) {
    return Row(
      children: [
        Icon(
          Icons.fiber_manual_record,
          color: redColor,
          size: 10,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            text ?? '',
            style: style18white,
          ),
        )
      ],
    );
  }
}
