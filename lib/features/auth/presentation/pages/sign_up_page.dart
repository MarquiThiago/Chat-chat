import 'package:chat_chat/common/infrastructure/injectable/injection.dart';
import 'package:chat_chat/common/presentatio/presents.dart';
import 'package:chat_chat/common/presentatio/widgets/box_spacer.dart';
import 'package:chat_chat/common/presentatio/widgets/my_button.dart';
import 'package:chat_chat/common/presentatio/widgets/my_text_field.dart';
import 'package:chat_chat/features/auth/application/auth_controller.dart';
import 'package:chat_chat/features/auth/infrastructure/i_auth_repository.dart';
import 'package:chat_chat/features/auth/presentation/validators.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    required this.onPressed,
    super.key,
  });

  final void Function()? onPressed;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
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
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.message,
                      size: 80,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const BoxSpacer(
                    size: 50,
                  ),
                  Text(
                    Presents.welcome,
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
                  MyTextField(
                    controller: passwordConfirmController,
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
                    text: Presents.signUp,
                    onTap: signIn,
                  ),
                  const BoxSpacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(Presents.alreadyAMember),
                      TextButton(
                        onPressed: widget.onPressed,
                        child: Text(
                          Presents.login,
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
        ),
      ),
    );
  }

  void signIn() {
    if (formKey.currentState!.validate() &&
        passwordController.text == passwordConfirmController.text) {
      controller.createUser(emailController.text, passwordController.text);
    }

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
          const SnackBar(
            content: Text(Presents.userCreated),
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
