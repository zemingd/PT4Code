a,b = gets.chomp.split.map &:to_i

ans = b
if a <= 5
  ans = 0
elsif 6 <= a && a <= 12
  ans /= 2
end

puts ans
