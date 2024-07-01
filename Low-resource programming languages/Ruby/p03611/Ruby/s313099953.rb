n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
ac = Array.new(1000000, 0)
ans = 0

a.uniq.each do |i|
  ac[i] = a.count(i)
end

a.uniq.each do |x|
  t = ac[x+1] + ac[x] + ac[x-1]
  ans = t if t > ans
end
puts ans
