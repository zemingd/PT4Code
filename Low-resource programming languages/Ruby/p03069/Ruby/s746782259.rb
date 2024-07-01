n = gets.chomp!.to_i
s = gets.chomp!

chs = s.chars

puts (n + 1).times.map {|i|
  chs[0, i].count {|ch| ch == "#" } + chs[i, n - i].count{|ch| ch == "." }
}.min