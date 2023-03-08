import 'dart:io';

void main() {
  // Đường dẫn tới file gốc và file sao chép
  String sourcePath = "hello.txt";
  String destinationPath = "hello_copy.txt";

  // Đọc nội dung từ file gốc
  File sourceFile = File(sourcePath);
  String content = sourceFile.readAsStringSync();

  // Tạo file sao chép và ghi nội dung vào đó
  File destinationFile = File(destinationPath);
  destinationFile.writeAsStringSync(content);

  print("Đã sao chép file $sourcePath sang $destinationPath");
}
