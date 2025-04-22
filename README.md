# Bài tập về nhà 05 của SV: K225480106099 - Đậu Văn Khánh - Môn Hệ quản trị CSDL
SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT : Có database với các bảng dữ liệu cần thiết (3nf), Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

DEADLINE: 23H59:59 NGÀY 23/04/2025

# BÀI LÀM
# ĐỀ TÀI: QUẢN LÝ QUÁN INTERNET
## A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, đưa ra yêu cầu của bài toán đó
- Quán game là nơi cung cấp dịch vụ sử dụng máy tính (PC) cho khách hàng giải trí, chơi game, lướt web hoặc làm việc. Người dùng sẽ được quản lý theo từng ca sử dụng máy, có thể mua thêm dịch vụ đi kèm như nước uống, đồ ăn nhẹ.
- Hiện nay, việc quản lý chủ yếu là thủ công, hoặc bằng phần mềm đơn giản, gây ra các hạn chế như:
   + Khó kiểm soát thời gian sử dụng máy theo từng khách hàng.
   + Khó tính tổng chi phí khi khách dùng cả máy và dịch vụ.
   + Không theo dõi được trạng thái máy (đang dùng, hỏng, trống).
   + Không kiểm soát được doanh thu, thống kê theo ngày/tuần/tháng.
   + Hệ thống cần được phân tích và thiết kế để tự động hóa quy trình hoạt động, giúp quản lý chặt chẽ và nâng cao hiệu quả kinh doanh.

2. Yêu cầu của bài toán
2.1. Yêu cầu chức năng:
- Quản lý khách hàng:
   + Lưu thông tin khách hàng (tên, tài khoản, mật khẩu, số tiền nạp...).
   + Đăng nhập/đăng xuất tài khoản.
- Quản lý máy:
   + Theo dõi trạng thái máy (trống, đang dùng, hỏng).
   + Ghi nhận thời gian bắt đầu - kết thúc sử dụng.
   + Tính tiền dựa trên thời gian sử dụng và giá theo máy.
- Quản lý dịch vụ:
   + Danh sách các dịch vụ (nước uống, mì tôm, thẻ game...).
   + Giá tiền của từng dịch vụ.
   + Cho phép khách đặt thêm dịch vụ trong thời gian sử dụng máy.
- Thanh toán:
   + Ghi nhận các ca sử dụng máy.
   + Cộng dồn tiền dịch vụ + tiền giờ chơi.
   + Tự động trừ tiền trong tài khoản khách hàng.
- Thống kê - báo cáo:
   + Doanh thu theo ngày, theo khách hàng, theo dịch vụ.
   + Thống kê các máy được sử dụng nhiều nhất.

2.2. Yêu cầu phi chức năng:
- Giao diện dễ sử dụng cho nhân viên và khách hàng.
- Tính ổn định và bảo mật (mật khẩu khách hàng).

3. Cơ sở dữ liệu của Đồ án PT&TKHT : Có database với các bảng dữ liệu cần thiết (3nf), Các bảng này đã có PK, FK, CK cần thiết
Hệ thống có thể mở rộng (nhiều máy, nhiều loại dịch vụ).

3.1. Tạo Database QuanLyQuanInternet

![image](https://github.com/user-attachments/assets/1e27b029-6be3-47fe-8220-58a5eb4c63b7)

3.2. Tạo bảng

🍀Bảng KhachHang
- Gồm các trường:
    + idKhachHang(PK):int
    + TenKH: nvarchar(50)
    + TaiKhoan: varchar(10)
    + MatKhau: varchar(10)
    + SoTien: money
      
![image](https://github.com/user-attachments/assets/893af848-210a-481d-abf2-980ee36fda8b)

🍀Bảng May
- Gồm các trường:
    + idMay(PK): int
    + TenMay: nvarchar(50)
    + TinhTrang: nvarchar(50)
    + GiaTien: money
      
![image](https://github.com/user-attachments/assets/5d972777-da7e-4256-acf2-fef3ba39c55c)

🍀Bảng DichVu
- Gồm các trường:
    + idDichVu(PK): int
    + TenDichVu: nvarchar(50)
    + GiaDichVu: money
      
![image](https://github.com/user-attachments/assets/40d36d62-f77d-40b6-ae61-461ac7f44c61)

🍀Bảng ThanhToan
- Gồm các trường:
  + idThanhToan(PK): int
  + idKhachHang: int
  + idMay: int
  + ThoiGianBatDau: datetime
  + ThoiGianKetThuc: datetime

![image](https://github.com/user-attachments/assets/5658716b-2185-4dec-b9cc-c318c8caed8f)

🍀Bảng ThanhToan_DichVu
- Gồm các trường:
    + idThanhToan_DichVu(PK): int
    + idThanhToan: int
    + idDichVu: int
    + SoLuong: int
 
![image](https://github.com/user-attachments/assets/64c46660-c2bf-4de4-a032-ac05d5f2c4d5)



