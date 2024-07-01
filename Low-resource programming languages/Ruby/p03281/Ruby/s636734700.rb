n = gets.to_i
ans = 0
if n == 105
  ans = 1
elsif n > 105
  ans = 1 + (106..n).count { |i| (1..i).count { |j| i % j == 0 } == 8 }
end
puts ans