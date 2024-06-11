import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamropasalmobile/themes/themes.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

@override
Widget build(BuildContext context, WidgetRef ref) {
  final currentIndex = ref.watch(currentIndexProvider);

  return Scaffold(
    appBar: AppBar(
      backgroundColor: kSecondaryColor,
      iconTheme: const IconThemeData(color: Colors.white),
      title: Text(
        'Profile',
        style: AppTheme.kBigTitle.copyWith(color: kWhiteColor),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.local_mall_outlined),
          ),
        )
      ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('avatar'),
                trailing: Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'Your image URL here'), // Replace with your avatar image URL
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.edit,
                          size: 20,
                          color: Color.fromARGB(255, 226, 181, 234),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                title: Text('Email'),
                subtitle: Text('Aa@aa.com'),
                trailing: Icon(Icons.edit),
              ),
              const Divider(),
              const ListTile(
                title: Text('Change password'),
                trailing: Icon(Icons.edit),
              ),
            ],
          ),
        ),
      ),
    ),

    // bottomNavigationBar: BottomNavigationBar(
    //   currentIndex: currentIndex,
    //   onTap: (value) {
    //     ref.read(currentIndexProvider.notifier).update((state) => value);

    //     switch (value) {
    //       case 0:
    //         // Home icon index
    //         // Scroll to the top of the page

    //         // After scrolling to the top, use Navigator.push to navigate to the HomePage
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => HomePage(),
    //           ),
    //         );

    //         break;
    //       case 4:
    //         // Profile icon index
    //         // Use Navigator.push to navigate to the DetailsPage
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => SettingsScreen(),
    //           ),
    //         );
    //         break;
    //       default:
    //         ref.read(currentIndexProvider.notifier).update((state) => value);
    //         // Handle other tabs if needed
    //         break;
    //     }
    //   },
    //   selectedItemColor: kPrimaryColor,
    //   unselectedItemColor: kSecondaryColor,
    //   items: const [
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home_outlined),
    //       label: 'Home',
    //       activeIcon: Icon(Icons.home_filled),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.favorite_outline),
    //       label: 'Favorite',
    //       activeIcon: Icon(Icons.favorite),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.location_on_outlined),
    //       label: 'Location',
    //       activeIcon: Icon(Icons.location_on),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.notifications_outlined),
    //       label: 'Notification',
    //       activeIcon: Icon(Icons.notifications),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.person_outline),
    //       label: 'Profile',
    //       activeIcon: Icon(Icons.person),
    //     ),
    //   ],
    // ),
  );
}
