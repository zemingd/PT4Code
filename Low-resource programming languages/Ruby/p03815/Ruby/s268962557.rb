
x = gets.to_i
ans = x / 11 * 2

rest = x % 11
if rest == 0
    ans += 0
elsif rest >=1 and rest <= 6
    ans += 1
elsif rest >= 7 and rest <= 11
    ans += 2
end

puts ans
