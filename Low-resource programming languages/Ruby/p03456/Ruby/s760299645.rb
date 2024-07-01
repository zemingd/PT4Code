a,b = gets.split
c = a + b

i = 1
flag = false
while i < c.to_i
  if i*i == c.to_i
    flag = true
  end

  i += 1
end

if flag == false
  puts "No"
else
  puts "Yes"
end