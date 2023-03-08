import 'dart:io';

void main() {
  // Yêu cầu người dùng nhập tên của họ
  print("Bạn tên là gì?");
  String? name = stdin.readLineSync();

  // Mở file để thêm vào
  File file = File("hello.txt");
  IOSink sink = file.openWrite(mode: FileMode.append);

  // Ghi tên của người dùng vào file
  sink.write("$name\n");

  // Đóng file
  sink.close();
}
