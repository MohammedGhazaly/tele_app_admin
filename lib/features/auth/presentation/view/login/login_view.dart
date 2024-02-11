import 'package:flutter/material.dart';
import 'package:tele_admin/features/auth/presentation/view/login/widgets/custom_auth_text_field.dart';
import 'package:email_validator/email_validator.dart';

class LoginView extends StatefulWidget {
  static const String routeName = "/";
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  String? errorMessage = "asdasd";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(24.0),
            children: [
              CustomAuthTextField(
                isObscured: false,
                label: "Email Address",
                controller: emailController,
                keyBoardType: TextInputType.emailAddress,
                preFixIcon: const Icon(Icons.email),
                validatorFunction: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email should not be empty";
                  } else if (!EmailValidator.validate(value)) {
                    return "Please enter a valid email (examble@ex.com)";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomAuthTextField(
                isObscured: true,
                suffixIcon: InkWell(
                  overlayColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.transparent),
                  child: Icon(Icons.visibility),
                  onTap: () {},
                ),
                label: "Password",
                controller: passwordController,
                keyBoardType: TextInputType.text,
                preFixIcon: const Icon(Icons.lock),
                validatorFunction: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password should not be empty";
                  } else if (value.length <= 6) {
                    return "Password should be at least 6 chars";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login as admin"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              if (errorMessage != null)
                Text(
                  "ERROR: ${errorMessage!}",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                )
            ],
          ),
        ),
      ),
    );
  }
}
