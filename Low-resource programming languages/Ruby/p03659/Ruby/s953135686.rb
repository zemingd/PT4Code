n = gets.to_i
a = gets.split.map(&:to_i)
cum = [0]
tmp = 0

a.each do |i|
  tmp += i
  cum << tmp
end

min = (cum[1] - (cum[-1] - cum[1])).abs

2.upto(n - 1) do |i|
  tmp = (cum[i] - (cum[-1] - cum[i])).abs
  min = tmp if min > tmp
end

puts min