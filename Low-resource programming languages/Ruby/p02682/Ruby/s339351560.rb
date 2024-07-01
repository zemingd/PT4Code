a,b,c,k = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
sum = 0
c = c+1
# calc a
sum = sum + a * 1
b_and_c_nokori = k - a

if b_and_c_nokori == 0 # finish
else
  if b_and_c_nokori <= b then  sum += 0
  else sum += (b_and_c_nokori - b)  * -1
  end
end

puts sum