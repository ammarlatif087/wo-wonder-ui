import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wo_wonder/app/index.dart';
import 'package:wo_wonder/presentation/common/app_button.dart';

import '../../common/social_login_widget.dart';
import '../../common/textfield_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: SingleChildScrollView(
          child: Column(
            children: [
              60.spaceY,
              Utils.popinSemBoldText(
                'Sign Up',
                fontSize: 30.sp,
                color: ColorManager.white,
              ),
              60.spaceY,
              Container(
                width: 1.sw,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 40.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Utils.popinSemBoldText('Name', fontSize: 18.sp),
                      10.spaceY,
                      TextfieldWidget(
                        keyboardType: TextInputType.name,
                        hintText: 'Name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: ColorManager.darkGrey,
                        ),
                      ),
                      30.spaceY,
                      Utils.popinSemBoldText('Email', fontSize: 18.sp),
                      10.spaceY,
                      TextfieldWidget(
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'email@example.com',
                        prefixIcon: Icon(
                          Icons.email,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) =>
                            value!.isValidEmail() ? null : 'Invalid Email',
                      ),
                      30.spaceY,
                      Utils.popinSemBoldText('Passwords', fontSize: 18.sp),
                      10.spaceY,
                      TextfieldWidget(
                        obscureText: true,
                        keyboardType: TextInputType.name,
                        hintText: 'Enter your password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: ColorManager.darkGrey,
                        ),
                        suffixIcon: GestureDetector(
                          // onTap: () => viewModel.showPassword(),
                          child: Icon(
                            // viewModel.isPassObs
                            //     ? Icons.visibility_off
                            Icons.visibility,
                            color: ColorManager.darkGrey,
                            size: 20.sp,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your passwords';
                          }
                          return null;
                        },
                      ),
                      30.spaceY,
                      AppButton(text: 'Register', onPress: () {}),
                      30.spaceY,
                      Center(
                        child: Utils.popinSemBoldText(
                            'Sign Up With Existing Account?'),
                      ),
                      30.spaceY,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SocialLoginWidget(
                            ontap: () {},
                            iconData: FontAwesomeIcons.google,
                          ),
                          SocialLoginWidget(
                            ontap: () {},
                            iconData: FontAwesomeIcons.apple,
                          ),
                          SocialLoginWidget(
                            ontap: () {},
                            iconData: FontAwesomeIcons.facebook,
                          ),
                        ],
                      ),
                      20.spaceY,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Utils.popinSemBoldText(
                            'Already Have An Account? ',
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.loginRoute);
                            },
                            child: Utils.popinSemBoldText(
                              ' Log In Now ',
                              color: ColorManager.primary,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
