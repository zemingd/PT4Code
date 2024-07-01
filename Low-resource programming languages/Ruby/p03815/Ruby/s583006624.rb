x = gets.to_i

ans = x/11*2
if 1 <= x%11 && x%11 <= 6
  ans += 1
elsif 7<= x%11
 ans += 2
end

puts ans