import 'package:duaxe/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/images/background/background.jpg',
            fit: BoxFit.cover,
          )),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "TRƯỜNG ĐUA F1",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: 200,
                  child: TextButton(
                    onPressed: () {
                      const url = "https://okvipgroup.com/";
                      launchUrlString(url);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.yellowAccent),
                    child: const Text(
                      "TRANG CHỦ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const CarRaceHomePage();
                        },
                      ));
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.8),
                      side: const BorderSide(color: Colors.white),
                    ),
                    child: const Text(
                      "CHƠI GAME",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: OutlinedButton(
                    onPressed: () {
                      const url = "https://okvipgroup.com/chinh-sach-bao-mat/";
                      launchUrlString(url);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.8),
                      side: const BorderSide(color: Colors.white),
                    ),
                    child: const Text(
                      "CHÍNH SÁCH BẢO MẬT",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) {
                      //     return const CarRaceHomePage();
                      //   },
                      // ));
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.8),
                      side: const BorderSide(color: Colors.white),
                    ),
                    child: const Text(
                      "ĐÁNH GIÁ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
