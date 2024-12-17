// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ProfilePage(),
//     );
//   }
// }

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Trang Profile'),
//       //   backgroundColor: Color(0xfffe8142),
//       // ),
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight), // Chiều cao của AppBar
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment
//                     .topCenter, // Bắt đầu gradient từ trung tâm trên cùng
//                 end: Alignment
//                     .bottomCenter, // Kết thúc gradient ở góc dưới bên phải
//                 colors: [
//                   Color(0xfff56d1f),
//                   Color(0xfffefdfc),
//                 ]),
//           ),
//           child: AppBar(
//             title: Text('Profile',
//                 style: TextStyle(
//                   fontSize: 24, // Kích thước chữ
//                   fontWeight: FontWeight.bold, // Độ đậm
//                   color: Color(0xff252525),
//                 )),
//             centerTitle: true,
//             backgroundColor: Colors
//                 .transparent, // Đặt background của AppBar thành trong suốt
//             elevation: 0, // Tắt bóng đổ của AppBar
//           ),
//         ),
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Ảnh đại diện
//             CircleAvatar(
//               radius: 60,
//               // backgroundImage: NetworkImage(
//               backgroundImage: AssetImage(
//                 'assets/images/bg.png',
//               ),
//             ),
//             SizedBox(height: 20),

//             // Tên người dùng
//             Text(
//               'Kiệt',
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xfffd723b),
//               ),
//             ),
//             SizedBox(height: 10),

//             // Mô tả ngắn gọn
//             Text(
//               'Thông tin cá nhân',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey[600],
//               ),
//             ),
//             SizedBox(height: 20),

//             // Thông tin chi tiết
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.blue[50],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildInfoRow('Email', 'kiet@example.com'),
//                   _buildInfoRow('Phone', '012345678'),
//                   _buildInfoRow('Address', '123 hcm, vietnam'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Hàm xây dựng mỗi dòng thông tin
//   Widget _buildInfoRow(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: Colors.blueAccent,
//             ),
//           ),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.grey[700],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:Shop_KT/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xfff56d1f),
                Color(0xfffefdfc),
              ],
            ),
          ),
          child: AppBar(
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff252525),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ảnh đại diện
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/bg.png',
              ),
            ),
            SizedBox(height: 20),

            // Tên người dùng
            Text(
              'Kiệt',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xfffd723b),
              ),
            ),
            SizedBox(height: 10),

            // Mô tả ngắn gọn
            Text(
              'Thông tin cá nhân',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),

            // Thông tin chi tiết
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow('Email', 'kiet@example.com'),
                  _buildInfoRow('Phone', '012345678'),
                  _buildInfoRow('Address', '123 hcm, vietnam'),
                ],
              ),
            ),
            Spacer(), // Đẩy các nội dung phía trên lên trên cùng

            // Nút Đăng Xuất
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfffd723b), // Màu nền nút
                  foregroundColor: Colors.white, // Màu chữ
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0), // Padding dọc cho nút
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Bo tròn góc nút
                  ),
                ),
                child: const Text(
                  "Log out",
                  style: TextStyle(
                    fontSize: 16, // Kích thước chữ
                    fontWeight: FontWeight.bold, // Độ đậm chữ
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  // Hàm xây dựng mỗi dòng thông tin
  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}