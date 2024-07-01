n = gets.to_i
r = n % 11
q = n / 11
if r >= 1 && r <= 6
  ans = (q + 1) * 2 - 1
elsif r >= 7 && r <= 11
  ans = (q + 1) * 2
elsif r == 0
  ans = q * 2
end

puts ans