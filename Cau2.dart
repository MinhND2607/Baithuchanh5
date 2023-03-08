import 'dart:convert';
import 'dart:io';

void main() {
  // Yêu cầu người dùng nhập tên của bạn bè
  print("Bạn bè của bạn tên là gì?");
  String? friendName = stdin.readLineSync();

  // Mở file để đọc nội dung
  File file = File("minh.txt");
  Stream<List<int>> inputStream = file.openRead();

  // Đọc nội dung của file
  List<String> lines = [];
  inputStream.transform(utf8.decoder).transform(LineSplitter()).listen((String line) {
    lines.add(line);
  }, onDone: () {
    // Thêm tên bạn bè vào cuối file
    lines.add(friendName!);
    
    // Mở file để thêm vào
    IOSink sink = file.openWrite(mode: FileMode.write);

    // Ghi nội dung đã cập nhật vào file
    sink.writeAll(lines, '\n');

    // Đóng file
    sink.close();
  });
}
