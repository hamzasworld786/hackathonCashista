import 'package:flutter/material.dart';
import 'transfer_successful.dart';

class TransferToFriendsScreen extends StatefulWidget {
  final double balance;

  TransferToFriendsScreen({this.balance = 1250.75});

  @override
  _TransferToFriendsScreenState createState() =>
      _TransferToFriendsScreenState();
}

class _TransferToFriendsScreenState extends State<TransferToFriendsScreen> {
  final _phoneController = TextEditingController();
  final _notesController = TextEditingController();

  double _amount = 0;

  void _showAmountSetter() async {
    final result = await showDialog<String>(
      context: context,
      builder: (context) {
        final tempController = TextEditingController();
        return AlertDialog(
          title: Text('Set Amount'),
          content: TextField(
            controller: tempController,
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
              signed: false,
            ),
            decoration: InputDecoration(hintText: 'Enter amount'),
            autofocus: true,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, tempController.text);
              },
              child: Text('Set'),
            ),
          ],
        );
      },
    );

    if (result != null && result.isNotEmpty) {
      final parsed = double.tryParse(result);
      if (parsed != null && parsed >= 0) {
        setState(() {
          _amount = parsed;
        });
      }
    }
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5D2DFD),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 24,
              right: 24,
              top: 24,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 26,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Transfer to Friends',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.help_outline,
                            color: Colors.white,
                            size: 26,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Balance:' +
                              ' \nRP${widget.balance.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 3,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            child: Text(
                              'Top Up',
                              style: TextStyle(
                                color: Color(0xFF5D2DFD),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Positioned.fill(
              top: 160,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
                ),
                padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 8),
                      TextField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Input phone number',
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF5D2DFD)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 0,
                          ),
                        ),
                      ),

                      SizedBox(height: 32),

                      Center(
                        child: Column(
                          children: [
                            Text(
                              'Set Amount',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                            SizedBox(height: 8),
                            GestureDetector(
                              onTap: _showAmountSetter,
                              child: Text(
                                'RP ${_amount.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1A1A1A),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 32),

                      Text(
                        'Notes',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: _notesController,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Add notes (optional)',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                        ),
                      ),

                      SizedBox(height: 40),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF5D2DFD),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        onPressed: () {
                          final phone = _phoneController.text.trim();

                          if (phone.isEmpty || _amount <= 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Please enter phone number and amount',
                                ),
                                backgroundColor: Colors.redAccent,
                              ),
                            );
                            return;
                          }

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TransferSuccessfulScreen(
                                recipientName: "hamza",
                                recipientPhone: phone,
                                amount: _amount,
                                date: "June 12, 2023",
                                time: "20:32",
                                referenceNumber: "QOIU-0012-ADFE-2234",
                              ),
                            ),
                          );
                        },

                        child: Text(
                          'Proceed To Transfer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                    ],
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
