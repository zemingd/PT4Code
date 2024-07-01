x = gets.to_i

ans = 0
((x**0.5).to_i**2).downto(2) do |n|
  tmp = 1
  tmp *= n while tmp < x
  tmp /= n if tmp > x
  ans = tmp if tmp > ans
end
p ans