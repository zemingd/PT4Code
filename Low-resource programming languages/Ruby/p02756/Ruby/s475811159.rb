S = gets.chomp
gets
HT,h = ['',''],0
$<.each{|ln| ln.chomp!
	if ln == '1'
		h = 1-h
	elsif ln[0,3] == '2 1'
		HT[h] << ln[-1]
	elsif ln[0,3] == '2 2'
		HT[1-h] << ln[-1]
	else end
}
print HT[h].reverse, (h==0 ? S : S.reverse), HT[1-h], "\n"
