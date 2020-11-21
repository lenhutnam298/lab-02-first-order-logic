% University of Science, Vietnam National University Ho Chi Minh City
% Faculty of Information Technology
% Department of Computer Science
% Author: Nhut-Nam Le

% 1. Lê Ngọc Thành là giảng viên đúng hay sai?
question_01 :-
writeln('Le Ngoc Thanh la giang vien dung hay sai ?'),
giang_vien('Le Ngoc Thanh') -> writeln('Dung'); writeln('Sai').

% 2. Bộ môn nào cùng khoa với bộ môn khoa học máy tính?
question_02 :-
writeln('Bo mon nao cung khoa voi bo mon Khoa hoc may tinh ?'),
findall(BoMon, bo_mon_cung_khoa('Khoa hoc may tinh', BoMon), DanhSachBoMon),
writeln(DanhSachBoMon).

% 3. Học vị của thầy Lê Ngọc Thành là tiến sĩ đúng hay sai?  
question_03 :-
    writeln('Hoc vi cua thay Le Ngoc Thanh la tien si dung hay sai ?'),
    tien_si('Le Ngoc Thanh') -> writeln('Dung'); writeln('Sai').

% 4. Thầy Lê Hoài Bắc là Giáo sư đúng hay sai?
question_04 :-
    writeln('Thay Le Hoai Bac la giao su dung hay sai ?'),
    giao_su('Le Hoai Bac') -> writeln('Dung'); writeln('Sai').

% 5. Khoa CNTT có những ngành nào?
question_05 :-
writeln('Khoa CNTT co nhung nganh nao?'),
findall(_nganh, (nganh(_nganh), truc_thuoc(_nganh, 'CNTT')), DanhSachNganh),
writeln(DanhSachNganh).

% 6. Khoa CNTT có những chuyên ngành nào?
question_06 :-
writeln('Khoa CNTT co nhung chuyen nganh nao?'),
findall(_chuyen_nganh, (chuyen_nganh(_chuyen_nganh),
                        truc_thuoc(_chuyen_nganh,_nganh),
                        truc_thuoc(_nganh, 'CNTT')), DanhSachChuyenNganh),
writeln(DanhSachChuyenNganh).

% 7. Khoa CNTT thành lập năm nào?
question_07 :-
writeln('Khoa CNTT thanh lap nam nao?'),
findall(_year, nam_thanh_lap('CNTT', _year), _year),
writeln(_year).

% 8. Thầy Đinh Bá Tiến là trưởng khoa CNTT đúng hay sai?
question_08 :-
writeln('Thay Dinh Ba Tien la truong khoa CNTT dung hay sai ?'),
truong_khoa('Dinh Ba Tien', 'CNTT') -> writeln('Dung'); writeln('Sai').

% 9. Những ai đang giữ chức phó khoa CNTT?
question_09 :-
writeln('Nhung ai dang giu chuc pho khoa CNTT ?'),
findall(_phoKhoa, pho_khoa(_phoKhoa, 'CNTT'), DanhSachPhoKhoa),
writeln(DanhSachPhoKhoa).

% 10. Danh sách Giáo sư của Khoa CNTT.
question_10 :-
    writeln('Danh sach Giao su cua khoa CNTT'),
    findall(_giaosu, (giao_su(_giaosu),
                      truc_thuoc(_giaosu, _nganh),
                      truc_thuoc(_nganh, 'CNTT')), DanhSachGiaoSu),
    writeln(DanhSachGiaoSu).

% 11. Danh sách phó giao sư của khoa CNTT.
question_11 :-
    writeln('Danh sach Pho Giao su cua khoa CNTT'),
    findall(_phogiaosu, (pho_giao_su(_phogiaosu),
                         truc_thuoc(_phogiaosu, _nganh),
                         truc_thuoc(_nganh, 'CNTT')), DanhSachPhoGiaoSu),
    writeln(DanhSachPhoGiaoSu).

% 12. Danh sách tiến sĩ của Khoa CNTT.
question_12 :-
    writeln('Danh sach Tien si cua khoa CNTT'),
    findall(_giangvien, (tien_si(_giangvien),
                         truc_thuoc(_giangvien, _nganh),
                         truc_thuoc(_nganh, 'CNTT')), DanhSachTienSi),
    writeln(DanhSachTienSi).

% 13. Danh sách Thạc sĩ của khoa CNTT.
question_13 :-
    writeln('Danh sach Thac si cua khoa CNTT'),
    findall(_giangvien, (thac_si(_giangvien),
                         truc_thuoc(_giangvien, _nganh),
                         truc_thuoc(_nganh, 'CNTT')), DanhSachThacSi),
    writeln(DanhSachThacSi).

% 14. Ngành Khoa học máy tính và Kỹ thuật phần mềm có cùng khoa hay khong
question_14 :-
     writeln('Nganh Khoa hoc may tinh va Ky thuat phan mem co cung khoa ?'),
     nganh_cung_khoa('Khoa hoc may tinh', 'Ky thuat phan mem') -> writeln('Dung'); writeln('Sai').

% 15. Thầy Lý Quốc Ngọc và thầy Lê Hoài Bắc có cùng là Giáo sư?
question_15 :-
    writeln('Thay Ly Quoc Ngoc va thay Le Hoai Bac co cung la giao su?'),
    cung_la_giao_su('Le Hoai Bac', 'Ly Quoc Ngoc') -> writeln('Dung'); writeln('Sai').

% 16. Trường DH KHTN có những khoa nào?
question_16 :-
    writeln('Truong DH KHTN co nhung khoa nao?'),
    findall(_khoa, (khoa(_khoa), truc_thuoc(_khoa, 'ÐH KHTN')), DanhSachKhoa),
    writeln(DanhSachKhoa).

% 17. Ai là trưởng bộ môn Khoa học máy tính?
question_17 :-
    writeln('Ai la truong bo mon Khoa hoc may tinh?'),
    truong_bo_mon(_truongBoMonKHMT, 'Khoa hoc may tinh'),
    writeln(_truongBoMonKHMT).
% 18. Ai là phó trưởng bộ môn Khoa học máy tính?
question_18 :-
    writeln('Ai la pho truong bo mon Khoa hoc may tinh?'),
    pho_bo_mon(_phoTruongBoMonKHMT, 'Khoa hoc may tinh'),
    writeln(_phoTruongBoMonKHMT).
% 19. Lê Nhựt Nam có phải là giáo sư?
question_19 :-
    writeln('Le Nhut Nam co phai la giao su?'),
    giao_su('Le Nhut Nam') -> writeln('Dung'); writeln('Sai').

% 20. Chuyên ngành Cong nghe tri thức và Vật lý lý thuyết có cùng ngành?
question_20 :-
    writeln('Chuyen nganh Cong nghe tri thuc va Vat ly Ly thuyet?'),
    chuyen_nganh_cung_nganh('Cong nghe tri thuc', 'Vat ly Ly thuyet') -> writeln('Dung'); writeln('Sai').

% 21. Phòng bộ môn Khoa học máy tính là I.81 đúng hay sai?
question_21 :-
    writeln('Phong bo mon Khoa hoc may tinh la I.81, dung hay sai?'),
    phong('Khoa hoc may tinh', 'I.81') ->  writeln('Dung'); writeln('Sai').

% 22. Những ai là trưởng khoa của các khoa của trường KHTN?
question_22 :-
    writeln('Nhung ai la truong khoa cua cac khoa truong KHTN?'),
    findall(_truongkhoa, (truong_khoa(_truongkhoa, _khoa), khoa(_khoa)), DanhSachTruongKhoa),
    writeln(DanhSachTruongKhoa).