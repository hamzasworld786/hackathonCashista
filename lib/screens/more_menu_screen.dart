import 'package:flutter/material.dart';

class MoreMenuScreen extends StatelessWidget {
  MoreMenuScreen({Key? key}) : super(key: key);

  final double balance = 1250.75;
  final int cashPoints = 420;

  final List<_MenuOption> mainMenuOptions = [
    _MenuOption(icon: Icons.send, label: 'Transfer', routeName: '/transfer'),
    _MenuOption(icon: Icons.account_balance_wallet_outlined, label: 'Top Up'),
    _MenuOption(icon: Icons.money_off, label: 'Withdraw'),
    _MenuOption(icon: Icons.request_page_outlined, label: 'Request'),
  ];

  final List<_MenuOption> paymentListOptions = [
    _MenuOption(icon: Icons.phone_iphone_outlined, label: 'Pulsa & Data'),
    _MenuOption(icon: Icons.electrical_services_outlined, label: 'Electricity'),
    _MenuOption(icon: Icons.airplane_ticket_outlined, label: 'Online Ticket'),
    _MenuOption(icon: Icons.school_outlined, label: 'Education'),
    _MenuOption(icon: Icons.health_and_safety_outlined, label: 'Insurance'),
    _MenuOption(icon: Icons.trending_up_outlined, label: 'Invest'),
    _MenuOption(icon: Icons.wifi_outlined, label: 'Internet & TV Cable'),
    _MenuOption(icon: Icons.videogame_asset_outlined, label: 'Games Voucher'),
    _MenuOption(icon: Icons.account_balance_wallet, label: 'E Money'),
    _MenuOption(icon: Icons.water_outlined, label: 'Water'),
    _MenuOption(icon: Icons.shopping_cart_outlined, label: 'E-Commerce'),
    _MenuOption(icon: Icons.live_tv_outlined, label: 'Streaming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5D2DFD),
      body: SafeArea(
        child: Container(
          color: Color(0xFF5D2DFD),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 40,
                ),
                child: _buildBalanceHeader(),
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(36),
                    ),
                  ),
                  padding: EdgeInsets.all(24),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Main Menu',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Edit the menu tapped!'),
                                  ),
                                );
                              },
                              child: Text(
                                'Edit the Menu',
                                style: TextStyle(
                                  color: Color(0xFF5D2DFD),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 16),

                        GridView.count(
                          crossAxisCount: 4,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 24,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: mainMenuOptions.map((option) {
                            return _buildCircularOption(context, option);
                          }).toList(),
                        ),

                        SizedBox(height: 32),

                        Text(
                          'Payment List',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),

                        SizedBox(height: 16),

                        GridView.count(
                          crossAxisCount: 4,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 24,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: paymentListOptions.map((option) {
                            return _buildCircularOption(context, option);
                          }).toList(),
                        ),

                        SizedBox(height: 32),
                      ],
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

  Widget _buildBalanceHeader() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                    size: 28,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Cashista',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Icon(Icons.stars, color: Colors.white),
                  SizedBox(width: 6),
                  Text(
                    '$cashPoints Cashpoints',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 24),

        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Current Balance',
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                '\$${balance.toStringAsFixed(2)}',
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
      ],
    );
  }

  Widget _buildCircularOption(BuildContext context, _MenuOption option) {
    return GestureDetector(
      onTap: () {
        if (option.routeName != null) {
          Navigator.pushNamed(context, option.routeName!);
        } else {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('${option.label} tapped!')));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF5D2DFD),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x995D2DFD),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            width: 62,
            height: 62,
            child: Icon(option.icon, color: Colors.white, size: 30),
          ),
          SizedBox(height: 8),
          Text(
            option.label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A1A),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _MenuOption {
  final IconData icon;
  final String label;
  final String? routeName;

  _MenuOption({required this.icon, required this.label, this.routeName});
}
