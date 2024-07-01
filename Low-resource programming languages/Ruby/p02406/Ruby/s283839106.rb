
val = gets.to_i
i = 1
str = ""

while i <= val
  if i % 3 == 0
    str += " " + i.to_s
  elsif i % 10 == 3
    str += " " + i.to_s
  else
    i /= 10;
    if i
      str += " " + i.to_s if i % 10 == 3
    end
  end
  i += 1
end

puts str