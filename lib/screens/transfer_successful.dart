// import 'package:flutter/material.dart';

// class TransferSuccessfulScreen extends StatelessWidget {
//   final String recipientName;
//   final String recipientPhone;
//   final double amount;
//   final String date;
//   final String time;
//   final String referenceNumber;
//   final double fee;

//   const TransferSuccessfulScreen({
//     Key? key,
//     required this.recipientName,
//     required this.recipientPhone,
//     required this.amount,
//     required this.date,
//     required this.time,
//     required this.referenceNumber,
//     this.fee = 0,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final Color purple = Color(0xFF662AB2);
//     final Color darkPurple = Color(0xFF5C26A1);
//     final double containerWidth = 390;
//     final double containerHeight = 652;

//     return Scaffold(
//       backgroundColor: purple,
//       body: Stack(
//         children: [
//           // Big overlapping circles background accent
//           Positioned(
//             left: -263,
//             top: 350,
//             child: Container(
//               width: 628,
//               height: 628,
//               decoration: BoxDecoration(
//                 color: darkPurple,
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//           Positioned(
//             left: 183,
//             top: 70,
//             child: Container(
//               width: 363,
//               height: 363,
//               decoration: BoxDecoration(
//                 color: darkPurple,
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),

//           // Main white container
//           Positioned(
//             top: 80,
//             left: (MediaQuery.of(context).size.width - containerWidth) / 2,
//             child: Container(
//               width: containerWidth,
//               height: containerHeight,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(24),
//               ),
//               padding: EdgeInsets.fromLTRB(20, 88, 20, 36), // top padding to leave space for icon circle
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   // Detail Amount and notification area
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text(
//                         'Transfer Successful',
//                         style: TextStyle(
//                           fontFamily: 'Product Sans',
//                           fontWeight: FontWeight.w700,
//                           fontSize: 18,
//                           height: 22 / 18,
//                           color: Color(0xFF03B961),
//                         ),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         'Your transaction was successful',
//                         style: TextStyle(
//                           fontFamily: 'Product Sans',
//                           fontWeight: FontWeight.w400,
//                           fontSize: 16,
//                           height: 19 / 16,
//                           color: Color(0xFF999999),
//                         ),
//                       ),
//                       SizedBox(height: 24),
//                       Text(
//                         'Rp ${amount.toStringAsFixed(0)}',
//                         style: TextStyle(
//                           fontFamily: 'Product Sans',
//                           fontWeight: FontWeight.w700,
//                           fontSize: 40,
//                           height: 49 / 40,
//                           color: Color(0xFF121212),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: 40),

//                   // Destination info
//                   Container(
//                     width: 350,
//                     child: Column(
//                       children: [
//                         Text(
//                           'Send to',
//                           style: TextStyle(
//                             fontFamily: 'Product Sans',
//                             fontWeight: FontWeight.w700,
//                             fontSize: 18,
//                             height: 22 / 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 16),
//                         Row(
//                           children: [
//                             // Avatar circle placeholder
//                             Container(
//                               width: 48,
//                               height: 48,
//                               decoration: BoxDecoration(
//                                 color: Colors.grey.shade300,
//                                 shape: BoxShape.circle,
//                                 image: DecorationImage(
//                                   image: AssetImage('assets/avatar.jpg'), // replace with real avatar or network image
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 20),
//                             // Name and phone
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   recipientName,
//                                   style: TextStyle(
//                                     fontFamily: 'Product Sans',
//                                     fontWeight: FontWeight.w400,
//                                     fontSize: 16,
//                                     height: 19 / 16,
//                                     color: Color(0xFF121212),
//                                   ),
//                                 ),
//                                 SizedBox(height: 4),
//                                 Text(
//                                   recipientPhone,
//                                   style: TextStyle(
//                                     fontFamily: 'Product Sans Medium',
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 14,
//                                     height: 17 / 14,
//                                     color: Color(0xFF999999),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 40),

//                   // Transaction details
//                   Container(
//                     width: 350,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Transaction Details',
//                           style: TextStyle(
//                             fontFamily: 'Product Sans',
//                             fontWeight: FontWeight.w700,
//                             fontSize: 18,
//                             height: 22 / 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 16),

//                         // Payment
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Payment',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans Medium',
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Color(0xFF999999),
//                               ),
//                             ),
//                             Text(
//                               'Rp ${amount.toStringAsFixed(0)}',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans',
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 12),

//                         // Date
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Date',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans Medium',
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Color(0xFF999999),
//                               ),
//                             ),
//                             Text(
//                               date,
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans',
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 12),

//                         // Time
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Time',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans Medium',
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Color(0xFF999999),
//                               ),
//                             ),
//                             Text(
//                               time,
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans',
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 12),

//                         // Reference Number
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Reference Number',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans Medium',
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Color(0xFF999999),
//                               ),
//                             ),
//                             Text(
//                               referenceNumber,
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans',
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 12),

//                         // Fee
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Fee',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans Medium',
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Color(0xFF999999),
//                               ),
//                             ),
//                             Text(
//                               'Rp ${fee.toStringAsFixed(0)}',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans',
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14,
//                                 height: 17 / 14,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),

//                         SizedBox(height: 16),

//                         // Total Payment
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Total Payment',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans',
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 18,
//                                 height: 22 / 18,
//                                 color: purple,
//                               ),
//                             ),
//                             Text(
//                               'Rp ${(amount + fee).toStringAsFixed(0)}',
//                               style: TextStyle(
//                                 fontFamily: 'Product Sans',
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 24,
//                                 height: 29 / 24,
//                                 color: purple,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Circular white icon container with check circle icon
//           Positioned(
//             top: 40,
//             left: (MediaQuery.of(context).size.width - 80) / 2,
//             child: Container(
//               width: 80,
//               height: 80,
//               padding: EdgeInsets.all(4),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 shape: BoxShape.circle,
//               ),
//               child: Icon(
//                 Icons.check_circle,
//                 size: 72,
//                 color: Color(0xFF03B961),
//               ),
//             ),
//           ),

//           // Bottom buttons container
//           Positioned(
//             bottom: 28,
//             left: (MediaQuery.of(context).size.width - 390) / 2,
//             child: SizedBox(
//               width: 390,
//               child: Column(
//                 children: [
//                   // Back to Home button (white background, purple text)
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.popUntil(context, (route) => route.isFirst);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(vertical: 16),
//                       shape: StadiumBorder(),
//                     ),
//                     child: Text(
//                       'Back to Home',
//                       style: TextStyle(
//                         fontFamily: 'Product Sans',
//                         fontWeight: FontWeight.w700,
//                         fontSize: 20,
//                         color: purple,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),

//                   // Share button (purple background, white text, border)
//                   OutlinedButton(
//                     onPressed: () {
//                       // Add share functionality here
//                     },
//                     style: OutlinedButton.styleFrom(
//                       side: BorderSide(color: Colors.white, width: 2),
//                       padding: EdgeInsets.symmetric(vertical: 16),
//                       shape: StadiumBorder(),
//                     ),
//                     child: Text(
//                       'Share',
//                       style: TextStyle(
//                         fontFamily: 'Product Sans',
//                         fontWeight: FontWeight.w700,
//                         fontSize: 20,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Optional: Status bar placeholder at top
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             height: 44,
//             child: Container(
//               color: purple,
//               child: Center(
//                 child: Text(
//                   '12:30', // You can dynamically update this or use a widget
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 14,
//                     fontFamily: 'SF Pro Text',
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TransferSuccessfulScreen extends StatelessWidget {
  final String recipientName;
  final String recipientPhone;
  final double amount;
  final String date;
  final String time;
  final String referenceNumber;
  final double fee;

  const TransferSuccessfulScreen({
    Key? key,
    required this.recipientName,
    required this.recipientPhone,
    required this.amount,
    required this.date,
    required this.time,
    required this.referenceNumber,
    this.fee = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color purple = const Color(0xFF662AB2);
    final Color darkPurple = const Color(0xFF5C26A1);
    final double containerWidth = 390;
    final double containerHeight = 652;

    return Scaffold(
      backgroundColor: purple,
      body: Stack(
        children: [
          // Big overlapping circles background accent
          Positioned(
            left: -263,
            top: 350,
            child: Container(
              width: 628,
              height: 628,
              decoration: BoxDecoration(
                color: darkPurple,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 183,
            top: 70,
            child: Container(
              width: 363,
              height: 363,
              decoration: BoxDecoration(
                color: darkPurple,
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Scrollable main content (card + buttons)
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal:
                    (MediaQuery.of(context).size.width - containerWidth) / 2,
              ),
              child: Column(
                children: [
                  // Main white container card
                  Container(
                    width: containerWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 88, 20, 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Detail Amount and notification area
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Transfer Successful',
                              style: TextStyle(
                                fontFamily: 'Product Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                height: 22 / 18,
                                color: const Color(0xFF03B961),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Your transaction was successful',
                              style: TextStyle(
                                fontFamily: 'Product Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                height: 19 / 16,
                                color: const Color(0xFF999999),
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Rp ${amount.toStringAsFixed(0)}',
                              style: TextStyle(
                                fontFamily: 'Product Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: 40,
                                height: 49 / 40,
                                color: const Color(0xFF121212),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 40),

                        // Destination info
                        SizedBox(
                          width: 350,
                          child: Column(
                            children: [
                              Text(
                                'Send to',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  height: 22 / 18,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  // Avatar circle placeholder
                                  Container(
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        image: AssetImage('assets/avatar.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  // Name and phone
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        recipientName,
                                        style: TextStyle(
                                          fontFamily: 'Product Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 19 / 16,
                                          color: const Color(0xFF121212),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        recipientPhone,
                                        style: TextStyle(
                                          fontFamily: 'Product Sans Medium',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          height: 17 / 14,
                                          color: const Color(0xFF999999),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 40),

                        // Transaction details
                        SizedBox(
                          width: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Transaction Details',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  height: 22 / 18,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 16),

                              // Payment
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Payment',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: const Color(0xFF999999),
                                    ),
                                  ),
                                  Text(
                                    'Rp ${amount.toStringAsFixed(0)}',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              // Date
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: const Color(0xFF999999),
                                    ),
                                  ),
                                  Text(
                                    date,
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              // Time
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Time',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: const Color(0xFF999999),
                                    ),
                                  ),
                                  Text(
                                    time,
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              // Reference Number
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Reference Number',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: const Color(0xFF999999),
                                    ),
                                  ),
                                  Text(
                                    referenceNumber,
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              // Fee
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Fee',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: const Color(0xFF999999),
                                    ),
                                  ),
                                  Text(
                                    'Rp ${fee.toStringAsFixed(0)}',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      height: 17 / 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 16),

                              // Total Payment
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Payment',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      height: 22 / 18,
                                      color: purple,
                                    ),
                                  ),
                                  Text(
                                    'Rp ${(amount + fee).toStringAsFixed(0)}',
                                    style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      height: 29 / 24,
                                      color: purple,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),

                  // Buttons beneath card
                  SizedBox(
                    width: containerWidth,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.popUntil(
                              context,
                              (route) => route.isFirst,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: const StadiumBorder(),
                          ),
                          child: Text(
                            'Back to Home',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: purple,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        OutlinedButton(
                          onPressed: () {
                            // TODO: add share functionality
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text(
                            'Share',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),
                ],
              ),
            ),
          ),

          // Circular white icon container with check circle icon
          Positioned(
            top: 40,
            left: (MediaQuery.of(context).size.width - 80) / 2,
            child: Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle,
                size: 72,
                color: Color(0xFF03B961),
              ),
            ),
          ),

          // Optional: Status bar placeholder at top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 44,
            child: Container(
              color: purple,
              child: const Center(
                child: Text(
                  '12:30',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
