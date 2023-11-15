import 'package:airbnb_clone/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({super.key});

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: appWhite.withOpacity(0.5),
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(),
      ),
    );
  }
}
