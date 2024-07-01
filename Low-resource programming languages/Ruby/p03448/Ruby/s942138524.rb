n500 = gets.to_i
n100 = gets.to_i
n50  = gets.to_i
sum  = gets.to_i

ans = 0

for i in 0 .. n500
  for j in 0 .. n100
    left = sum - (500 * i + 100 * j)
    if left >= 0 && left % 50 == 0 && left / 50 <= n50
      ans += 1
    end
  end
end

puts ans
