
--SU DUNG CSDL
use QuanLySinhVien5
-- CHINH DINH DANG NGAY THANG NAM
set dateformat dmy;
go
--TAO  BANG
create table Lop(
	MaLop char(3) not null primary key,
	TenLop	nvarchar(30) not null 
	
)

go

create table Sinhvien(
	MaSV char(6) not null primary key,
	HotenSV	nvarchar(40),
	NgaySinh datetime,
	MaLop char(3),
	FOREIGN KEY (MaLop) REFERENCES Lop(MaLop) 
	
)

go


--------- TABLE LOP -----------------
insert into Lop values ('01','Cong Nghe Thong Tin')
insert into Lop values ('02','Ngon Ngu Anh')

select * from Lop
go


--------- TABLE SINHVIEN -----------------
insert into Sinhvien values ('001','TRAN THI CHIEU','12/05/2000','01')
insert into Sinhvien values ('002','MAI THI QUE ANH','25/05/2000','02')
insert into Sinhvien values ('003','LE VAN SANG','26/05/2000','01')
insert into Sinhvien values ('004','LE HOANG NAM','30/09/2000','02')

select * from Sinhvien
go