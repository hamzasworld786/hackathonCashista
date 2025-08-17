import 'package:flutter/material.dart';

class TransferSuccessScreen extends StatelessWidget {
  final String recipient;
  final String amount;

  TransferSuccessScreen({
    this.recipient = 'John Doe',
    this.amount = '\$100.00',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF5D2DFD).withOpacity(0.15),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(40),
                child: Icon(
                  Icons.check_circle,
                  size: 100,
                  color: Color(0xFF5D2DFD),
                ),
              ),

              SizedBox(height: 48),

              Text(
                'Transfer Successful',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1A1A),
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 16),

              Text(
                'You have successfully transferred $amount to $recipient.',
                style: TextStyle(fontSize: 18, color: Color(0xFF6B7280)),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 48),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5D2DFD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/home',
                      (route) => false,
                    );
                  },
                  child: Text(
                    'Back to Home',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
