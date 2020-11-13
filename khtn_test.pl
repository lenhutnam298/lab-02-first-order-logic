% University of Science, Vietnam National University Ho Chi Minh City
% Faculty of Information Technology
% Department of Computer Science
% Author: Nhut-Nam Le

:- [khtn].

writeln(Line) :-
	\+ is_list(Line),
	write(Line),
	nl.

% remove duplicate in List
writeln(List) :-
	is_list(List),
	length(List, LenList),
	LenList > 0,
	sort(List, SortedList),
	write(SortedList),
	nl.

% if list is empty -> No, information
writeln(List) :-
	is_list(List),
	length(List, LenList),
	LenList == 0,
	write('No, information'),
	nl.

question_01 :-
writeln('Nguyen Dinh Thuc la giang vien dung hay sai ?'),
giang_vien('Nguyen Dinh Thuc') -> writeln('Dung'); writeln('Sai').

question_02 :-
writeln('Bo mon nao cung khoa voi bo mon Khoa hoc may tinh ?'),
findall(BoMon, bo_mon_cung_khoa('Khoa hoc may tinh', BoMon), DanhSachBoMon),
writeln(DanhSachBoMon).

question_03 :-
    writeln('Hoc vi cua thay Le Ngoc Thanh la tien si dung hay sai ?'),
    tien_si('Le Ngoc Thanh') -> writeln('Dung'); writeln('Sai').

question_04 :-
    writeln('Thay Le Hoai Bac la giao su dung hay sai ?'),
    giao_su('Le Hoai Bac') -> writeln('Dung'); writeln('Sai').

question_05 :-
writeln('Khoa CNTT co nhung nganh nao?'),
findall(_nganh, (nganh(_nganh), truc_thuoc(_nganh, 'CNTT')), DanhSachNganh),
writeln(DanhSachNganh).

question_06 :-
writeln('Khoa CNTT co nhung chuyen nganh nao?'),
findall(_chuyen_nganh, (chuyen_nganh(_chuyen_nganh), truc_thuoc(_chuyen_nganh,_nganh), truc_thuoc(_nganh, 'CNTT')), DanhSachChuyenNganh),
writeln(DanhSachChuyenNganh).

question_07 :-
writeln('Khoa CNTT thanh lap nam nao?'),
findall(_year, nam_thanh_lap('CNTT', _year), _year),
writeln(_year).

question_08 :-
writeln('Thay Dinh Ba Tien la truong khoa CNTT dung hay sai ?'),
truong_khoa('Dinh Ba Tien', 'CNTT') -> writeln('Dung'); writeln('Sai').

question_09 :-
writeln('Nhung ai dang giu chuc pho khoa CNTT ?'),
findall(_phoKhoa, pho_khoa(_phoKhoa, 'CNTT'), DanhSachPhoKhoa),
writeln(DanhSachPhoKhoa).

question_10 :-
    writeln('Danh sach Giao su cua khoa CNTT'),
    findall(_giaosu, (giao_su(_giaosu), truc_thuoc(_giaosu, _nganh), truc_thuoc(_nganh, 'CNTT')), DanhSachGiaoSu),
    writeln(DanhSachGiaoSu).

question_11 :-
    writeln('Danh sach Pho Giao su cua khoa CNTT'),
    findall(_phogiaosu, (pho_giao_su(_phogiaosu), truc_thuoc(_phogiaosu, _nganh), truc_thuoc(_nganh, 'CNTT')), DanhSachPhoGiaoSu),
    writeln(DanhSachPhoGiaoSu).

question_12 :-
    writeln('Danh sach Tien si cua khoa CNTT'),
    findall(_giangvien, (tien_si(_giangvien), truc_thuoc(_giangvien, _nganh), truc_thuoc(_nganh, 'CNTT')), DanhSachTienSi),
    writeln(DanhSachTienSi).

question_13 :-
    writeln('Danh sach Thac si cua khoa CNTT'),
    findall(_giangvien, (thac_si(_giangvien), truc_thuoc(_giangvien, _nganh), truc_thuoc(_nganh, 'CNTT')), DanhSachThacSi),
    writeln(DanhSachThacSi).

question_14 :-
     writeln('Nganh Khoa hoc may tinh va Ky thuat phan mem co cung khoa ?'),
     nganh_cung_khoa('Khoa hoc may tinh', 'Ky thuat phan mem') -> writeln('Dung'); writeln('Sai').

question_15 :-
    writeln('Thay Ly Quoc Ngoc va thay Le Hoai Bac co cung la giao su?'),
    cung_la_giao_su('Le Hoai Bac', 'Ly Quoc Ngoc') -> writeln('Dung'); writeln('Sai').

question_16 :-
    writeln('Truong DH KHTN co nhung khoa nao?'),
    findall(_khoa, (khoa(_khoa), truc_thuoc(_khoa, 'ÐH KHTN')), DanhSachKhoa),
    writeln(DanhSachKhoa).

question_17 :-
    writeln('Ai la truong bo mon Khoa hoc may tinh?'),
    truong_bo_mon(_truongBoMonKHMT, 'Khoa hoc may tinh'),
    writeln(_truongBoMonKHMT).

question_18 :-
    writeln('Ai la pho truong bo mon Khoa hoc may tinh?'),
    truong_bo_mon(_phoTruongBoMonKHMT, 'Khoa hoc may tinh'),
    writeln(_phoTruongBoMonKHMT).

question_19 :-
    writeln('Le Nhut Nam co phai la giao su?'),
    giao_su('Le Nhut Nam') -> writeln('Dung'); writeln('Sai').

question_20 :-
    writeln('Chuyen nganh Cong nghe tri thuc va Thi giac may tinh va Dieu khien hoc thong minh co cung nganh khong?'),
    chuyen_nganh_cung_nganh('Cong nghe tri thuc', 'Thi giac may tinh va dieu khien hoc thong minh') -> writeln('Dung'); writeln('Sai').