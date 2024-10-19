import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:replica_project2/sections/dashboard_card.dart';
import 'package:replica_project2/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _mainPanel(),
    );
  }

//WIDGETS SECTION
  AppBar _appBar() => AppBar(
    automaticallyImplyLeading: true,
    title: Text('Replica Project',
      style: GoogleFonts.raleway(),
    ),
    centerTitle: true,
  );

  Widget _mainPanel() => const Column(
    children: [
      _HeaderSection(),
      _MainForm(),
      _NavigationBar(),
    ],
  );
}

//CLASS SECTION
class _HeaderSection extends StatelessWidget {
  const _HeaderSection();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
      
          //HEADER TEXTS AND AVATAR  
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('See Job Run',
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.titleMedium,
                  color: Colors.white,
                  fontSize: 30,  
                  fontWeight: FontWeight.bold            
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/img/me.jpg'),
                radius: 25,
              ),
            ],
          ),
          Row(
            children: [
              Text('Welcome Amatsu',
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MainForm extends StatelessWidget {
  const _MainForm();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: [
              DashboardCard(
                icon: Icons.handyman, 
                color: AppColors.secondaryAccent, 
                onTap: (){}, title: 'Jobs',
              ),
              DashboardCard(
                icon: Icons.list, 
                color: AppColors.secondaryAccent, 
                onTap: (){}, title: 'To-Do List',
              ),
              DashboardCard(
                icon: Icons.receipt, 
                color: AppColors.secondaryAccent, 
                onTap: (){}, title: 'Appointments',
              ),
              DashboardCard(
                icon: Icons.people, 
                color: AppColors.secondaryAccent, 
                onTap: (){}, title: 'Customers',
              ),
              DashboardCard(
                icon: Icons.lock_clock, 
                color: AppColors.secondaryAccent, 
                onTap: (){}, title: 'Time Cards',
              ),
              DashboardCard(
                icon: Icons.note, 
                color: AppColors.secondaryAccent, 
                onTap: (){}, title: 'Change Orders',
              ),
            ],
          ),
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          ),
       
        //NAVIGATION BAR SECTION  
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //HOME BUTTON
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: const Icon(Icons.home),
                    color: Colors.white,
                    iconSize: 25,
                  ),
                  const Text('Home'),
                ],
              ),

              //CLOCK-IN BUTTON
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: const Icon(Icons.lock_clock),
                    color: Colors.white,
                    iconSize: 25,
                  ),
                  const Text('Clock-In'),
                ],
              ),

              //SEARCH BUTTON
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                    iconSize: 25,
                  ),
                  const Text('Home'),
                ],
              ),

              //CONTACTS BUTTON
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: const Icon(Icons.book),
                    color: Colors.white,
                    iconSize: 25,
                  ),
                  const Text('Contacts'),
                ],
              ),

              //PROFILE BUTTON
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: const Icon(Icons.person),
                    color: Colors.white,
                    iconSize: 25,
                  ),
                  const Text('Profile'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}


