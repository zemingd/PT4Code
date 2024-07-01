x = gets.to_i
flag = 0
a = b = 0
while flag == 0
  d = x - a**5
  tmp = d**(1/5.0)
  if d - (tmp.abs.floor)**5 == 0
    flag = 1
    b = (d**0.2).to_i
  else
    a += 1
  end
end
puts "#{a} #{b}"