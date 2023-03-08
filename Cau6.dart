import 'dart:io';

void main() {
  // Đường dẫn tới file cần xóa
  String filePath = "hello_copy.txt";

  // Kiểm tra xem file có tồn tại không
  if (File(filePath).existsSync()) {
    // Nếu có, thì xóa file bằng phương thức deleteSync()
    File(filePath).deleteSync();
    print("Đã xóa file $filePath");
  } else {
    // Nếu không, in thông báo lỗi
    print("File $filePath không tồn tại");
  }
}
