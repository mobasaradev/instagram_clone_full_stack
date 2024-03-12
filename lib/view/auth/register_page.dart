import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/common/custom_form_field.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/images.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _bioController = TextEditingController();
  final _userNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
    _bioController.dispose();
    _userNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // flex
              Flexible(
                flex: 2,
                child: Container(),
              ),
              // logo
              SvgPicture.asset(
                SvgManager.instagramLogo,
                color: AppColor.primary,
                height: 64,
              ),
              // space
              const SizedBox(height: 24),
              // add image
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIF.tGSEgqrzPfNsxp8I2X3voQ?rs=1&pid=ImgDetMain',
                    ),
                    backgroundColor: Colors.red,
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  )
                ],
              ),
              // space
              const SizedBox(height: 24),
              // email field
              CustomTextFormField(
                controller: _userNameController,
                keyboardType: TextInputType.text,
                hintText: 'Enter your user-name',
              ),
              // space
              const SizedBox(height: 24),
              // password field
              CustomTextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your email',
              ),
              // space
              const SizedBox(height: 24),
              // password field
              CustomTextFormField(
                controller: _passController,
                keyboardType: TextInputType.text,
                hintText: 'Enter your password',
                isPass: true,
              ),
              // space
              const SizedBox(height: 24),
              // password field
              CustomTextFormField(
                controller: _bioController,
                keyboardType: TextInputType.text,
                hintText: 'Enter your bio',
              ),
              // space
              const SizedBox(height: 24),

              // button
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: AppColor.blue,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text('Register'),
              ),
              const SizedBox(height: 12),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account ? '),
                  SizedBox(width: 8),
                  Text(
                    'Login Here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
