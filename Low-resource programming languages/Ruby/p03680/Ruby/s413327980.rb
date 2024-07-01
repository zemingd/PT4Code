N = gets.chomp.to_i
a = $<.map(&:to_i)
i = 0
ans = 0
N.times do |s|
  i = a[i] - 1
  ans += 1
  break if i == 0
end
puts (i == 1 ? ans : -1)
