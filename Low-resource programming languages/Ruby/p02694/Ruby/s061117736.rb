N = gets.to_i

wk, ans = [100, 0]
while wk < N do
  wk = (wk * 1.01).floor
  ans += 1
end

puts ans
