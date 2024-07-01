x = gets.to_i
flag = 0
a = b = 0
while flag == 0
  d = a**5 - x
  tmp = (d**(1/5.0)).abs
  #puts "#{a} #{d} #{tmp} #{tmp.floor}"
  if d - (tmp.abs.floor)**5 == 0
    flag = 1
    b = tmp.abs.floor
  elsif d + (tmp.abs.floor)**5 == 0
    flag = 1
    b = tmp.abs.floor * (-1)
  else
    a += 1
  end
end
puts "#{a} #{b}"