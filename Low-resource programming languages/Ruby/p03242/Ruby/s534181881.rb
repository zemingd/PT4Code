num = gets.split("")
p num
col = ""
for i in num do
  if i == "1"
    col += "9"
  elsif i == "9"
    col += "1"
  end
end
puts col.to_i