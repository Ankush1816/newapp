import 'package:flutter/material.dart ';
import 'package:newapp/components/coustom_svg.dart';
import 'package:newapp/components/default_button.dart';
import 'package:newapp/components/form_error.dart';
import 'package:newapp/constants.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String> errors = [];
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction, // Add this line
      child: Column(
        children: [
          builderEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          builderPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              const Text(
                "Remember me",
                style: TextStyle(color: Colors.black),
              ),
              const Spacer(),
              const Text(
                "Forgot Password",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.black),
              )
            ],
          ),
          FormError(errors: errors),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState?.save();
                // Process the data, e.g., send it to the server
              } else {
                // Clear errors when the form is not valid
                setState(() {
                  errors.clear();
                });
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField builderPassword() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isEmpty) {
          errors.remove(kPassNullError);
        } else if (value.length >= 8) {
          errors.remove(kShortPassError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          errors.add(kPassNullError);
          return "";
        } else if (value.length < 8) {
          errors.add(kShortPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: CoustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  TextFormField builderEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isEmpty) {
          errors.remove(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          errors.remove(kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          errors.add(kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          errors.add(kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: CoustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
    );
  }
}
