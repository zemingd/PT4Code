s, t = 2.times.map { gets.chomp }
_s = s.chars.sort.join
_t = t.chars.sort.reverse.join
puts _s < _t ? "Yes" : "No"
