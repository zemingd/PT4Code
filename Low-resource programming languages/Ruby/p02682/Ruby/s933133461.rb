a,b,c,k = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
sum = 0
c = c + 1
# calc a
sum = sum + a * 1
k = k - a

if k <= 0 then puts sum
else
  if k <= b then
    sum += 0
  else
    sum -= (k - b)  * 1
  end
  puts sum
end