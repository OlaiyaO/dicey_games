import 'package:dicey/components/dicey_theme.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  final String heading;
  final String description;
  final Function callback;

  const DescriptionScreen({
    Key? key,
    required this.heading,
    required this.description,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 10),
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.3,
              image: AssetImage('images/romance.jpg'),
              // replace with your own image
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
              ),
              Column(
                children: [
                  // add some top padding to content to avoid overlap with status bar
                  Text(
                    heading,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 32),
                  OutlinedButton(
                    onPressed: () {
                      callback();
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(24),
                      ),
                      overlayColor: MaterialStateProperty.all(
                        DiceyTheme.light().hoverColor,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                          DiceyTheme.lightTextTheme.titleLarge!.color),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    child: Text(
                      'Continue',
                      style: DiceyTheme.lightTextTheme.titleLarge!,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
