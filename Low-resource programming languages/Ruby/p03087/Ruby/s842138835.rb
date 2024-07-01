_n, n = gets.strip.split.map(&:to_i)
s = gets.strip
a = n.times.map { gets.strip.split.map(&:to_i) }
a.each do |d|
  puts s[d[0] - 1, d[1] - 1].scan('AC').size
end
