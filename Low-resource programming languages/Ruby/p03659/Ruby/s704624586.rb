n = gets.chomp.to_i
a = gets.split.map(&:to_i)
s = a[0]
r = a[1..-1].reduce(:+)
min = (s-r).abs
1.upto(n-2) do |i|
  s += a[i]
  r -= a[i]
  diff = (s-r).abs
  min = diff if min > diff
end
puts min
