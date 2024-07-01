n = gets.to_i
an = gets.split.map(&:to_i)
ans = []
1.upto(n-1) do |i|
  ans << (an[0...(n-i)].inject(:+) - an[(n-i)...n].inject(:+)).abs
end

puts ans.min