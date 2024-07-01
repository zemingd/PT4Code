n = gets.to_i
an = gets.split.map(&:to_i)
arai = an.pop
sunuke = an.inject(:+)
ans = [(sunuke-arai).abs]
1.upto(n-2) do |i|
  tmp = an.pop
  ans << ((sunuke -= tmp) - (arai += tmp)).abs
end

puts ans.min