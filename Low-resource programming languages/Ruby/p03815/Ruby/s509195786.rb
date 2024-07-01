x = gets.to_i
q, r = x.divmod(11)
ans = q * 2
if r > 6
  ans += 2
elsif r > 0
  ans + 1
end
puts ans
