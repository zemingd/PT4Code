a,b,c,k = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
sum = 0
c = c + 1
# calc a
sum = sum + a * 1
b_and_c_nokori = k - a

if b_and_c_nokori <= 0
  puts sum
   # finish
else # b_and_c_nokori > 0
  if b_and_c_nokori <= b
    sum += 0
  else# b_and_c_nokori > b
    sum += (k - a - b)  * -1
  end
  puts sum
end