import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'addproduct.dart'; // นำเข้าไฟล์ addproduct.dart
import 'showproductgrid.dart';
import 'showproducttype.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAs7jnhL2saD0sghPu5wkL6gfgcLiKhR2U",
        authDomain: "worknut-5590b.firebaseapp.com",
        databaseURL: "https://worknut-5590b-default-rtdb.firebaseio.com",
        projectId: "worknut-5590b",
        storageBucket: "worknut-5590b.firebasestorage.app",
        messagingSenderId: "466735215727",
        appId: "1:466735215727:web:ebce8de7cd61818813499a",
        measurementId: "G-57Z7LN1X3B",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 255, 91),
        title: const Text('แอปเก็บข้อมูลสินค้า'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.png'), // ใส่เส้นทางของภาพพื้นหลัง
            fit: BoxFit.cover, // ให้ภาพเต็มหน้าจอ
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // จัดให้อยู่ตรงกลางแนวตั้ง
                crossAxisAlignment:
                    CrossAxisAlignment.center, // จัดให้อยู่ตรงกลางแนวนอน
                children: [
                  Image.asset(
                    'assets/logo.png', // พาธรูปภาพ
                    height: 200.0, // ขนาดของรูปภาพ
                  ),
                  const SizedBox(height: 20), // เว้นระยะห่างระหว่างรูปกับปุ่ม
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddProductPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 247, 255, 91), // เปลี่ยนสีพื้นหลังของปุ่ม
                      foregroundColor: const Color.fromARGB(
                          255, 0, 0, 0), // เปลี่ยนสีข้อความบนปุ่ม
                    ),
                    child: const Text('บันทึกสินค้า'),
                  ),

                  const SizedBox(height: 20), // เพิ่มระยะห่างระหว่างปุ่ม
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShowProductgrid()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 247, 255, 91), // เปลี่ยนสีพื้นหลังของปุ่ม
                      foregroundColor: const Color.fromARGB(
                          255, 0, 0, 0), // เปลี่ยนสีข้อความบนปุ่ม
                    ),
                    child: const Text('แสดงข้อมูลสินค้า'),
                  ),
                  const SizedBox(height: 20), // เพิ่มระยะห่างระหว่างปุ่ม
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShowProductType()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 247, 255, 91), // เปลี่ยนสีพื้นหลังของปุ่ม
                      foregroundColor: const Color.fromARGB(
                          255, 0, 0, 0), // เปลี่ยนสีข้อความบนปุ่ม
                    ),
                    child: const Text('ประเภทสินค้า'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
