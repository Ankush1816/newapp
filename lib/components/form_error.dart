import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newapp/constants.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });
  final List<String> errors;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorTest(errors[index]),
      ),
    );
  }

  Row formErrorTest(String error) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(
          error,
          style: const TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
