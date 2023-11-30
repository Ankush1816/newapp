import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Rating&Reviews',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //     "rating and reviews are verified and are from people who use the same"),
              const SizedBox(
                height: 20,
              ),

              //overAll product ratings
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: const [
                        Text('4.5', style: TextStyle(fontSize: 60)),
                        Text('23 Ratings'),
                      ],
                    ),
                  ),
                  // Expanded(
                  //     flex: 3,
                  //     child: Text('4.5', style: TextStyle(fontSize: 60))),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        RatingProgressIndicator(
                          text: '* * * * *',
                          value: 1.0,
                        ),
                        RatingProgressIndicator(
                          text: '   * * * *',
                          value: 0.8,
                        ),
                        RatingProgressIndicator(
                          text: '      * * *',
                          value: 0.6,
                        ),
                        RatingProgressIndicator(
                          text: '         * *',
                          value: 0.4,
                        ),
                        RatingProgressIndicator(
                          text: '            *',
                          value: 0.2,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(text, style: const TextStyle(fontSize: 22)),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: const Color(0xFFF1E6DD),
              valueColor: const AlwaysStoppedAnimation(Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
