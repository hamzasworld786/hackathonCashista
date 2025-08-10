// import 'package:flutter/material.dart';

// class TransferScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF9FAFF),
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Color(0xFF1A1A1A)),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Text(
//           'Transfer',
//           style: TextStyle(
//             color: Color(0xFF1A1A1A),
//             fontWeight: FontWeight.bold,
//             fontSize: 22,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.help_outline, color: Color(0xFF5D2DFD)),
//             onPressed: () {
//               // TODO: Show help or info about Transfer screen
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
//         child: Column(
//           children: [
//             // Quick Transfer Options (bigger, closer)
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _buildOptionCard(
//                   context,
//                   icon: Icons.person_outline,
//                   label: 'To Friend',
//                   onTap: () => Navigator.pushNamed(context, '/transfer-friend'),
//                   width: 140,
//                   height: 160,
//                 ),
//                 SizedBox(width: 24),
//                 _buildOptionCard(
//                   context,
//                   icon: Icons.account_balance_outlined,
//                   label: 'To Bank',
//                   onTap: () => Navigator.pushNamed(context, '/transfer-bank'),
//                   width: 140,
//                   height: 160,
//                 ),
//               ],
//             ),

//             SizedBox(height: 48),

//             // Recent Contacts (keep as is)
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Recent Contacts',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF1A1A1A),
//                 ),
//               ),
//             ),

//             SizedBox(height: 16),

//             Expanded(
//               child: ListView(
//                 children: [
//                   _buildContactItem('Alice Johnson', 'assets/images/user1.png'),
//                   _buildContactItem('Bob Smith', 'assets/images/user2.png'),
//                   _buildContactItem('Charlie Lee', 'assets/images/user3.png'),
//                   // Add more contacts here
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildOptionCard(
//     BuildContext context, {
//     required IconData icon,
//     required String label,
//     required VoidCallback onTap,
//     double width = 100,
//     double height = 120,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: width,
//         height: height,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: Color(0x11000000),
//               blurRadius: 10,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 color: Color(0xFF5D2DFD).withOpacity(0.15),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               padding: EdgeInsets.all(20),
//               child: Icon(icon, size: 40, color: Color(0xFF5D2DFD)),
//             ),
//             SizedBox(height: 16),
//             Text(
//               label,
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 18,
//                 color: Color(0xFF1A1A1A),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildContactItem(String name, String imagePath) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 16),
//       child: ListTile(
//         leading: CircleAvatar(
//           backgroundImage: AssetImage(imagePath),
//           radius: 28,
//           backgroundColor: Colors.grey[200],
//         ),
//         title: Text(
//           name,
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontSize: 16,
//             color: Color(0xFF1A1A1A),
//           ),
//         ),
//         trailing: Icon(
//           Icons.arrow_forward_ios,
//           color: Color(0xFF5D2DFD),
//           size: 18,
//         ),
//         onTap: () {
//           // TODO: Implement contact tap
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5D2DFD), // Purple background
      body: SafeArea(
        child: Stack(
          children: [
            // Top bar with back arrow, title, question mark
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: 56,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Text(
                      'Transaction',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.help_outline, color: Colors.white),
                      onPressed: () {
                        // TODO: Show help or info
                      },
                    ),
                  ],
                ),
              ),
            ),

            // White curved container with content below top bar
            Positioned.fill(
              top: 56,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Transfer options row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildOptionCard(
                              context,
                              icon: Icons.person_outline,
                              label: 'To Friend',
                              onTap: () => Navigator.pushNamed(
                                context,
                                '/transfer-friend',
                              ),
                              width: 140,
                              height: 160,
                            ),
                            SizedBox(width: 24),
                            _buildOptionCard(
                              context,
                              icon: Icons.account_balance_outlined,
                              label: 'To Bank',
                              onTap: () => Navigator.pushNamed(
                                context,
                                '/transfer-bank',
                              ),
                              width: 140,
                              height: 160,
                            ),
                          ],
                        ),

                        SizedBox(height: 48),

                        // Latest Transfers title
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Latest Transfers',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1A1A1A),
                            ),
                          ),
                        ),

                        SizedBox(height: 16),

                        // Transfer list
                        _buildTransferItem(
                          name: 'Alice Johnson',
                          date: 'Aug 5, 2025',
                          amount: '-\$150.00',
                          icon: Icons.arrow_upward,
                          amountColor: Colors.red,
                        ),
                        _buildTransferItem(
                          name: 'Bob Smith',
                          date: 'Aug 4, 2025',
                          amount: '+\$200.00',
                          icon: Icons.arrow_downward,
                          amountColor: Colors.green,
                        ),
                        _buildTransferItem(
                          name: 'Charlie Lee',
                          date: 'Aug 2, 2025',
                          amount: '-\$75.00',
                          icon: Icons.arrow_upward,
                          amountColor: Colors.red,
                        ),

                        SizedBox(height: 32), // bottom padding
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    double width = 100,
    double height = 120,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0x11000000),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF5D2DFD).withOpacity(0.15),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(20),
              child: Icon(icon, size: 40, color: Color(0xFF5D2DFD)),
            ),
            SizedBox(height: 16),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xFF1A1A1A),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransferItem({
    required String name,
    required String date,
    required String amount,
    required IconData icon,
    required Color amountColor,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xFFF9FAFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: amountColor.withOpacity(0.15),
            child: Icon(icon, color: amountColor),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  date,
                  style: TextStyle(color: Color(0xFF6B7280), fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: amountColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
