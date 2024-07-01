str = gets.chomp
Q = gets.to_i

flag = true

for _ in 1..Q do
  t, f, c = gets.chomp.split

  if t == '1' then
    flag = !flag
  else
    if (f == '1') == flag then
      str = c + str
    else
      str = str + c
    end
  end
end

puts flag ? str : str.reverse
