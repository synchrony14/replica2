import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,

    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    
    });

    final String title;
    final IconData icon;
    final Color color;
    final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      
      //CARD THEME
      child: Card(
        color: color,
        elevation: 10,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              const SizedBox(height: 10),
              
              //TEXT THEME
              Text(
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.bodyMedium,               
                ),
                title,              
              ),
            ],
          ),
        ),
      ),
    );
  }
}