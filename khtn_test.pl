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