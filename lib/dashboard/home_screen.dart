// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   final String userName;
//   final double balance;
//   final int cashPoints;

//   HomeScreen({
//     this.userName = 'Hamza',
//     this.balance = 1250.75,
//     this.cashPoints = 420,
//     Key? key,
//   }) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   final List<Map<String, String>> statusUsers = [
//     {
//       'name': 'Alice',
//       'imageUrl': 'https://randomuser.me/api/portraits/women/65.jpg',
//     },
//     {
//       'name': 'Bob',
//       'imageUrl': 'https://randomuser.me/api/portraits/men/43.jpg',
//     },
//     {
//       'name': 'Charlie',
//       'imageUrl': 'https://randomuser.me/api/portraits/men/76.jpg',
//     },
//     {
//       'name': 'Diana',
//       'imageUrl': 'https://randomuser.me/api/portraits/women/12.jpg',
//     },
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     // Navigation logic can be added here
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF5D2DFD),
//       body: SafeArea(
//         child: Stack(
//           children: [
//             // Purple background top section: logo, cash points, balance
//             Positioned(
//               left: 24,
//               top: 40,
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.account_balance_wallet,
//                     color: Colors.white,
//                     size: 36,
//                   ),
//                   SizedBox(width: 8),
//                   Text(
//                     'Cashista',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 28,
//                       letterSpacing: 1.2,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               right: 24,
//               top: 44,
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(Icons.stars, color: Colors.white, size: 20),
//                     SizedBox(width: 6),
//                     Text(
//                       '${widget.cashPoints} Cashpoints',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 100,
//               left: 0,
//               right: 0,
//               child: Center(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       'Current Balance',
//                       style: TextStyle(color: Colors.white70, fontSize: 18),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       '\$${widget.balance.toStringAsFixed(2)}',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 44,
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 1.5,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // White container below with cards, status bar, transactions and bottom nav
//             Positioned.fill(
//               top: 180,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
//                 ),
//                 padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
//                 child: Column(
//                   children: [
//                     // Cards row
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         vertical: 20,
//                         horizontal: 16,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(24),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color(0x11000000),
//                             blurRadius: 12,
//                             offset: Offset(0, 6),
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           _buildCircularOption(
//                             context,
//                             icon: Icons.send,
//                             label: 'Transfer',
//                             onTap: () =>
//                                 Navigator.pushNamed(context, '/transfer'),
//                           ),
//                           _buildCircularOption(
//                             context,
//                             icon: Icons.account_balance_wallet_outlined,
//                             label: 'Topup',
//                             onTap: () {},
//                           ),
//                           _buildCircularOption(
//                             context,
//                             icon: Icons.money_off,
//                             label: 'Withdraw',
//                             onTap: () {},
//                           ),
//                           _buildCircularOption(
//                             context,
//                             icon: Icons.more_horiz,
//                             label: 'More',
//                             onTap: () =>
//                                 Navigator.pushNamed(context, '/more-menu'),
//                           ),
//                         ],
//                       ),
//                     ),

//                     SizedBox(height: 20),

//                     // WhatsApp style horizontal status bar
//                     Container(
//                       height: 90,
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: statusUsers.length + 1,
//                         itemBuilder: (context, index) {
//                           if (index == 0) {
//                             // Add New circle
//                             return Padding(
//                               padding: const EdgeInsets.only(right: 16),
//                               child: Column(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       ScaffoldMessenger.of(
//                                         context,
//                                       ).showSnackBar(
//                                         SnackBar(
//                                           content: Text('Add New tapped!'),
//                                         ),
//                                       );
//                                     },
//                                     child: Container(
//                                       width: 64,
//                                       height: 64,
//                                       decoration: BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         border: Border.all(
//                                           color: Color(0xFF5D2DFD),
//                                           width: 3,
//                                         ),
//                                         color: Colors.white,
//                                       ),
//                                       child: Center(
//                                         child: Icon(
//                                           Icons.add,
//                                           color: Color(0xFF5D2DFD),
//                                           size: 32,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 6),
//                                   Text(
//                                     'Add New',
//                                     style: TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w600,
//                                       color: Color(0xFF1A1A1A),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           } else {
//                             final user = statusUsers[index - 1];
//                             return Padding(
//                               padding: const EdgeInsets.only(right: 16),
//                               child: Column(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       ScaffoldMessenger.of(
//                                         context,
//                                       ).showSnackBar(
//                                         SnackBar(
//                                           content: Text(
//                                             '${user['name']} tapped!',
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                     child: Container(
//                                       width: 64,
//                                       height: 64,
//                                       decoration: BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         border: Border.all(
//                                           color: Color(0xFF5D2DFD),
//                                           width: 3,
//                                         ),
//                                         image: DecorationImage(
//                                           image: NetworkImage(
//                                             user['imageUrl']!,
//                                           ),
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 6),
//                                   Text(
//                                     user['name']!,
//                                     style: TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w600,
//                                       color: Color(0xFF1A1A1A),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }
//                         },
//                       ),
//                     ),

//                     SizedBox(height: 20),

//                     // Recent Transactions Title
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         'Recent Transactions',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                           color: Color(0xFF1A1A1A),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 16),

//                     // Transactions list + bottom nav inside Expanded
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Expanded(
//                             child: ListView(
//                               children: [
//                                 _buildTransactionItem(
//                                   icon: Icons.arrow_upward,
//                                   title: 'Sent to Alice',
//                                   subtitle: 'Jul 20, 2025',
//                                   amount: '-\$50.00',
//                                   amountColor: Colors.red,
//                                 ),
//                                 _buildTransactionItem(
//                                   icon: Icons.arrow_downward,
//                                   title: 'Received from Bob',
//                                   subtitle: 'Jul 18, 2025',
//                                   amount: '+\$200.00',
//                                   amountColor: Colors.green,
//                                 ),
//                               ],
//                             ),
//                           ),

//                           // Bottom Navigation Bar container
//                           Container(
//                             height: 70,
//                             padding: EdgeInsets.symmetric(horizontal: 12),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black12,
//                                   blurRadius: 8,
//                                   offset: Offset(0, -1),
//                                 ),
//                               ],
//                               borderRadius: BorderRadius.vertical(
//                                 top: Radius.circular(24),
//                               ),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 _buildNavItem(
//                                   icon: Icons.home,
//                                   label: 'Home',
//                                   isSelected: _selectedIndex == 0,
//                                   onTap: () => _onItemTapped(0),
//                                 ),
//                                 _buildNavItem(
//                                   icon: Icons.insert_chart_outlined,
//                                   label: 'Report',
//                                   isSelected: _selectedIndex == 1,
//                                   onTap: () => _onItemTapped(1),
//                                 ),
//                                 SizedBox(
//                                   width: 48,
//                                 ), // space for floating button
//                                 _buildNavItem(
//                                   icon: Icons.history,
//                                   label: 'History',
//                                   isSelected: _selectedIndex == 3,
//                                   onTap: () => _onItemTapped(3),
//                                 ),
//                                 _buildNavItem(
//                                   icon: Icons.person,
//                                   label: 'Profile',
//                                   isSelected: _selectedIndex == 4,
//                                   onTap: () => _onItemTapped(4),
//                                 ),
//                               ],
//                             ),
//                           ),

//                           // Floating QR Scanner button in center
//                           Padding(
//                             padding: const EdgeInsets.only(bottom: 12),
//                             child: Center(
//                               child: FloatingActionButton(
//                                 backgroundColor: Color(0xFF5D2DFD),
//                                 onPressed: () {
//                                   _onItemTapped(2);
//                                 },
//                                 child: Icon(Icons.qr_code_scanner, size: 30),
//                                 elevation: 4,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNavItem({
//     required IconData icon,
//     required String label,
//     required bool isSelected,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       behavior: HitTestBehavior.opaque,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             color: isSelected ? Color(0xFF5D2DFD) : Colors.grey,
//             size: 28,
//           ),
//           SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               color: isSelected ? Color(0xFF5D2DFD) : Colors.grey,
//               fontSize: 12,
//               fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCircularOption(
//     BuildContext context, {
//     required IconData icon,
//     required String label,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         children: [
//           Container(
//             width: 62,
//             height: 62,
//             decoration: BoxDecoration(
//               color: Color(0xFF5D2DFD),
//               shape: BoxShape.circle,
//               boxShadow: [
//                 BoxShadow(
//                   color: Color(0x995D2DFD),
//                   blurRadius: 10,
//                   offset: Offset(0, 4),
//                 ),
//               ],
//             ),
//             child: Icon(icon, color: Colors.white, size: 30),
//           ),
//           SizedBox(height: 8),
//           Text(
//             label,
//             style: TextStyle(
//               color: Color(0xFF1A1A1A),
//               fontWeight: FontWeight.w600,
//               fontSize: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTransactionItem({
//     required IconData icon,
//     required String title,
//     required String subtitle,
//     required String amount,
//     required Color amountColor,
//   }) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 16),
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Color(0x11000000),
//             blurRadius: 8,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             backgroundColor: Color(0xFF5D2DFD).withOpacity(0.1),
//             child: Icon(icon, color: Color(0xFF5D2DFD)),
//           ),
//           SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: Color(0xFF1A1A1A),
//                   ),
//                 ),
//                 SizedBox(height: 4),
//                 Text(
//                   subtitle,
//                   style: TextStyle(color: Color(0xFF6B7280), fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//           Text(
//             amount,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: amountColor,
//               fontSize: 16,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String userName;
  final double balance;
  final int cashPoints;

  HomeScreen({
    this.userName = 'Hamza',
    this.balance = 1250.75,
    this.cashPoints = 420,
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Map<String, String>> statusUsers = [
    {
      'name': 'Alice',
      'imageUrl': 'https://randomuser.me/api/portraits/women/65.jpg',
    },
    {
      'name': 'Bob',
      'imageUrl': 'https://randomuser.me/api/portraits/men/43.jpg',
    },
    {
      'name': 'Charlie',
      'imageUrl': 'https://randomuser.me/api/portraits/men/76.jpg',
    },
    {
      'name': 'Diana',
      'imageUrl': 'https://randomuser.me/api/portraits/women/12.jpg',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Add navigation logic here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5D2DFD),
      body: SafeArea(
        child: Stack(
          children: [
            // Purple background top section: logo, cash points, balance
            Positioned(
              left: 24,
              top: 40,
              child: Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                    size: 36,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Cashista',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 24,
              top: 44,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Icon(Icons.stars, color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Text(
                      '${widget.cashPoints} Cashpoints',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Current Balance',
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$${widget.balance.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // White container with scrollable content
            Positioned.fill(
              top: 180,
              bottom: 70, // leave space for bottom nav bar
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Cards row
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x11000000),
                                blurRadius: 12,
                                offset: Offset(0, 6),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildCircularOption(
                                context,
                                icon: Icons.send,
                                label: 'Transfer',
                                onTap: () =>
                                    Navigator.pushNamed(context, '/transfer'),
                              ),
                              _buildCircularOption(
                                context,
                                icon: Icons.account_balance_wallet_outlined,
                                label: 'Topup',
                                onTap: () {},
                              ),
                              _buildCircularOption(
                                context,
                                icon: Icons.money_off,
                                label: 'Withdraw',
                                onTap: () {},
                              ),
                              _buildCircularOption(
                                context,
                                icon: Icons.more_horiz,
                                label: 'More',
                                onTap: () =>
                                    Navigator.pushNamed(context, '/more-menu'),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        // WhatsApp style horizontal status bar
                        Container(
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: statusUsers.length + 1,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                // Add New circle
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text('Add New tapped!'),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 64,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFF5D2DFD),
                                              width: 3,
                                            ),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.add,
                                              color: Color(0xFF5D2DFD),
                                              size: 32,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        'Add New',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF1A1A1A),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                final user = statusUsers[index - 1];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                '${user['name']} tapped!',
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 64,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFF5D2DFD),
                                              width: 3,
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                user['imageUrl']!,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        user['name']!,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF1A1A1A),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                          ),
                        ),

                        SizedBox(height: 20),

                        // Recent Transactions Title
                        Text(
                          'Recent Transactions',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),

                        SizedBox(height: 16),

                        // Transactions list
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            _buildTransactionItem(
                              icon: Icons.arrow_upward,
                              title: 'Sent to Alice',
                              subtitle: 'Jul 20, 2025',
                              amount: '-\$50.00',
                              amountColor: Colors.red,
                            ),
                            _buildTransactionItem(
                              icon: Icons.arrow_downward,
                              title: 'Received from Bob',
                              subtitle: 'Jul 18, 2025',
                              amount: '+\$200.00',
                              amountColor: Colors.green,
                            ),
                            // Add more transactions here
                          ],
                        ),

                        SizedBox(
                          height: 100,
                        ), // Extra bottom padding so content not hidden by nav bar
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Bottom Navigation Bar fixed at bottom
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, -1),
                    ),
                  ],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildNavItem(
                      icon: Icons.home,
                      label: 'Home',
                      isSelected: _selectedIndex == 0,
                      onTap: () => _onItemTapped(0),
                    ),
                    _buildNavItem(
                      icon: Icons.insert_chart_outlined,
                      label: 'Report',
                      isSelected: _selectedIndex == 1,
                      onTap: () => _onItemTapped(1),
                    ),
                    SizedBox(width: 48), // space for floating button
                    _buildNavItem(
                      icon: Icons.history,
                      label: 'History',
                      isSelected: _selectedIndex == 3,
                      onTap: () => _onItemTapped(3),
                    ),
                    _buildNavItem(
                      icon: Icons.person,
                      label: 'Profile',
                      isSelected: _selectedIndex == 4,
                      onTap: () => _onItemTapped(4),
                    ),
                  ],
                ),
              ),
            ),

            // Floating QR Scanner button in center above bottom nav
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  onPressed: () {
                    _onItemTapped(2);
                  },
                  child: Icon(Icons.qr_code_scanner, size: 30),
                  elevation: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Color(0xFF5D2DFD) : Colors.grey,
            size: 28,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Color(0xFF5D2DFD) : Colors.grey,
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircularOption(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              color: Color(0xFF5D2DFD),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x995D2DFD),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Icon(icon, color: Colors.white, size: 30),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: Color(0xFF1A1A1A),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String amount,
    required Color amountColor,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
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
            backgroundColor: Color(0xFF5D2DFD).withOpacity(0.1),
            child: Icon(icon, color: Color(0xFF5D2DFD)),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
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
