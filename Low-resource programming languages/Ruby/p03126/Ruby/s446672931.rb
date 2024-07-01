N, M = gets.split.map(&:to_i)
fav_counter = [-1] + [0] * M
$stdin.each_line{|ln|
	_, *favs = ln.split.map(&:to_i)
	favs.each{|fav|
		fav_counter[fav] += 1
	}
}
p fav_counter.count{|_| _ == N }
