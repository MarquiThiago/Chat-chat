import 'package:chat_chat/common/infrastructure/injectable/injection.dart';
import 'package:chat_chat/common/presentatio/presents.dart';
import 'package:chat_chat/common/presentatio/widgets/box_spacer.dart';
import 'package:chat_chat/common/presentatio/widgets/my_button.dart';
import 'package:chat_chat/common/presentatio/widgets/my_text_field.dart';
import 'package:chat_chat/features/auth/application/auth_controller.dart';
import 'package:chat_chat/features/auth/infrastructure/i_auth_repository.dart';
import 'package:chat_chat/features/auth/presentation/validators.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    required this.onPressed,
    super.key,
  });

  final void Function()? onPressed;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  late AuthController controller;

  @override
  void initState() {
    controller = AuthController(getIt<IAuthRepository>());
    super.initState();
  }

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
              const BoxSpacer(
                size: 50,
              ),
              Text(
                Presents.welcomeBack,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const BoxSpacer(
                size: 50,
              ),
              MyTextField(
                controller: emailController,
                labelText: Presents.email,
                hintText: Presents.exampleEmail,
                validator: emailValidator,
              ),
              const BoxSpacer(),
              MyTextField(
                controller: passwordController,
                labelText: Presents.password,
                hintText: Presents.examplePassword,
                isObscure: isObscure,
                icon: IconButton(
                  icon: Icon(
                    isObscure ? Icons.remove_red_eye : Icons.visibility_off,
                  ),
                  onPressed: () => setState(() {
                    isObscure = !isObscure;
                  }),
                ),
                validator: (value) =>
                    passwordValidator(value, passwordController.text),
              ),
              const BoxSpacer(),
              MyButton(
                text: Presents.login,
                onTap: login,
              ),
              const BoxSpacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(Presents.signUp),
                  TextButton(
                    onPressed: widget.onPressed,
                    child: Text(
                      Presents.signUp,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    if (formKey.currentState?.validate() == false) return;

    controller.signIn(emailController.text, passwordController.text);

    controller.status.when(
      initial: () {},
      loading: () {
        showDialog(
          context: context,
          builder: (context) => const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Presents.loading),
              BoxSpacer(),
              CircularProgressIndicator.adaptive(),
            ],
          ),
        );
      },
      success: (data) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${Presents.welcomeBack} ${data.user?.email}'),
          ),
        );
      },
      failure: (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(Presents.notFound),
          ),
        );
      },
    );
  }
}
