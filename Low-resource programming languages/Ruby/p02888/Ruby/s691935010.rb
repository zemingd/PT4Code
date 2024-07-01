n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)

l_s = l.sort

ans = 0

l_s.each do |c|
  lf = l_s.select{|v| v < c}
  tmp = lf.combination(2).to_a.select{|a| a[0] + a[1] > c}.length
  ans += tmp
end

puts ans
