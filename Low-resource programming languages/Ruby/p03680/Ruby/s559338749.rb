N = gets.chomp.to_i
a = []
N.times do |i|
  a << gets.chomp.to_i
end
i = 0
ans = 0
N.times do |i|
  i = as[i] - 1
  ans += 1
  break if i == 0
end
puts (i == 1 ? ans : -1)
