import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/Header.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Header(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 32.0),
                width: width,
                height: height / 3,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text("Dashboard".toUpperCase(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white)),
                          trailing: const CircleAvatar(
                            radius: 25.0,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          "Senpai Dragon",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade300),
                        ),
                        Text(
                          "1st Dan Black belt \nSAKKA",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Activities",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Card(
                elevation: 4,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 16.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Container(
                          alignment: Alignment.bottomCenter,
                          width: 45.0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 8.0,
                                height: 15,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 4.0),
                              Container(
                                width: 8.0,
                                height: 5,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 4.0),
                              Container(
                                width: 8.0,
                                height: 25,
                                color: Colors.amber,
                              ),
                              const SizedBox(width: 4.0),
                              Container(
                                width: 8.0,
                                height: 30,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        title: const Text("Today"),
                        subtitle: const Text("15 Exercises complete"),
                      ),
                    ),
                    const VerticalDivider(),
                    Expanded(
                      child: ListTile(
                        leading: Container(
                          alignment: Alignment.bottomCenter,
                          width: 45.0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 8.0,
                                height: 11,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 4.0),
                              Container(
                                width: 8.0,
                                height: 25,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 4.0),
                              Container(
                                width: 8.0,
                                height: 8,
                                color: Colors.amber,
                              ),
                              const SizedBox(width: 4.0),
                              Container(
                                width: 8.0,
                                height: 10,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        title: const Text("Pending"),
                        subtitle: const Text("2 Exercises Pending"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: _buildTile(
                          color: Colors.blue,
                          icon: Icons.portrait,
                          title: "All Katas",
                          data: "50 including Ura"),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: _buildTile(
                          color: Colors.green,
                          icon: Icons.portrait,
                          title: "Students",
                          data: "55"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: _buildTile(
                          color: Colors.black,
                          icon: Icons.badge,
                          title: "Shodan",
                          data: "7",
                          dan: 1),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: _buildTile(
                          color: Colors.black,
                          icon: Icons.badge,
                          title: "Nidan",
                          data: "2",
                          dan: 2),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: _buildTile(
                          color: Colors.black,
                          icon: Icons.badge,
                          title: "Sandan",
                          data: "1",
                          dan: 3),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

Container _buildTile(
    {Color? color,
    IconData? icon,
    int dan = 0,
    required String title,
    required String data}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    height: 150.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 0; i < dan; i++)
          const Divider(
            thickness: 2,
            color: Colors.amber,
          ),
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.grey.shade300),
        ),
        Text(
          data,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.grey.shade300),
        ),
      ],
    ),
  );
}
