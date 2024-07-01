_ = gets
a = gets.split.map(&:to_i).sort
ans = 0
a.each_slice(2) { |s| ans += s.inject(:+).abs }
puts ans