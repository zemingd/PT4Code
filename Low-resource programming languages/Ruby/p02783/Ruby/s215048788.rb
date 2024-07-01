h, a = gets.chomp.split(' ').map(&:to_i)
ans = 0
while h>0
  ans += 1
  h -= a
end
puts ans
