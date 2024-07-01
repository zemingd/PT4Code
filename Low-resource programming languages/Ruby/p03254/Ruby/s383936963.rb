n, x = gets.chomp.split.map(&:to_i)
aa = gets.chomp.split.map(&:to_i)
aa.sort!

ret = 0
aa.each do |a|
  x -= a
  ret += 1 if x >= 0
end
ret -= 1 if x > 0
puts ret
