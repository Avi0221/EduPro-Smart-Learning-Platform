// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  String _selectedMethod = 'Credit Card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Method',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            RadioListTile(
              value: 'Credit Card',
              groupValue: _selectedMethod,
              onChanged: (val) => setState(() => _selectedMethod = val!),
              title: const Text('Credit Card'),
              secondary: const Icon(
                Icons.credit_card,
                color: Colors.blueAccent,
              ),
            ),
            RadioListTile(
              value: 'PayPal',
              groupValue: _selectedMethod,
              onChanged: (val) => setState(() => _selectedMethod = val!),
              title: const Text('PayPal'),
              secondary: const Icon(
                Icons.account_balance_wallet,
                color: Colors.blueAccent,
              ),
            ),
            RadioListTile(
              value: 'Bank Transfer',
              groupValue: _selectedMethod,
              onChanged: (val) => setState(() => _selectedMethod = val!),
              title: const Text('Bank Transfer'),
              secondary: const Icon(
                Icons.account_balance,
                color: Colors.blueAccent,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Processing $_selectedMethod payment...'),
                  ),
                );
                Future.delayed(const Duration(seconds: 2), () {
                  Navigator.pushNamed(context, '/paymentSuccess');
                });
              },
              child: const Center(
                child: Text(
                  "Proceed to Pay",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
