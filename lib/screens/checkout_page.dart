import 'package:flutter/material.dart';
import 'payment_success_page.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF6A5AE0),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Payment Summary',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: const [
                  _SummaryRow(
                    title: 'Course Name',
                    value: 'Flutter Development',
                  ),
                  _SummaryRow(title: 'Duration', value: '8 Weeks'),
                  _SummaryRow(title: 'Instructor', value: 'John Doe'),
                  _SummaryRow(title: 'Price', value: 'PKR 15,000'),
                  Divider(thickness: 1),
                  _SummaryRow(
                    title: 'Total Amount',
                    value: 'PKR 15,000',
                    bold: true,
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6A5AE0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Navigate to Payment Success Page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentSuccessPage(),
                    ),
                  );
                },
                child: const Text(
                  'Pay Now',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String title;
  final String value;
  final bool bold;

  const _SummaryRow({
    required this.title,
    required this.value,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
              color: Colors.grey.shade700,
              fontWeight: bold ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
              fontWeight: bold ? FontWeight.w600 : FontWeight.w400,
              color: bold ? Colors.black : Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
