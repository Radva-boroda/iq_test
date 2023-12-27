import 'package:flutter/material.dart';
import 'package:iq_test/common/widgets/border_radius_constants.dart';

class AnswerButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Widget child;

  const AnswerButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 85,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusConstants.circular8,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}