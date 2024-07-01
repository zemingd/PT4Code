
val = gets.to_i
i = 1
str = ""

while i <= val
  if i % 3 == 0
    str += " " + i.to_s
  elsif i % 10 == 3
    str += " " + i.to_s
  end
  i += 1
end

str.slice!(str.length - 1)
puts str