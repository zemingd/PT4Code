a = gets.chomp.split(' ').map(&:to_i).sort
ans = 0
(1...a.length).each do |i|
  ans += a[i] - a[i - 1]
end
puts ans