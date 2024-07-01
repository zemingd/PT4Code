a, b = gets.split(' ').map(&:to_i)

ans = b

if a < 6
  ans = 0
elsif a <= 12
  ans /= 2
end

puts ans
