lines = readlines.join.split
str = lines[1].split("")
strg = str.pop

if strg <= 10 && strg >= 1
  if lines[0] == strg
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end
