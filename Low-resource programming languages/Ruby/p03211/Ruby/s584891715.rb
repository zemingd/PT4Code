s = gets.chomp.split('').map(&:to_i)
n = s.size
m = 10000
(0..n-3).each do |i|
  num = (s[i] * 100) + (s[i + 1] * 10) + s[i + 2]
  small = (753 - num).abs
  m = small if m > small
end
puts m