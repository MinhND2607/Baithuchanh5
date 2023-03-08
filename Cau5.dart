import 'dart:io';

void main() {
  // Tạo thư mục để chứa các file mới
  String directoryName = "my_files";
  Directory(directoryName).createSync();

  // Tạo 100 file bằng vòng lặp
  for (int i = 1; i <= 100; i++) {
    String fileName = "$directoryName/file_$i.txt";
    File(fileName).createSync();
    print("Đã tạo file $fileName");
  }
}
