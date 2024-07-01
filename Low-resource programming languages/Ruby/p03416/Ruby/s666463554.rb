s, e = gets.split(' ').map(&:to_i)
puts (s..e).inject(0) {|sum, i| sum += (i.to_s == i.to_s.reverse ? 1 : 0)}
