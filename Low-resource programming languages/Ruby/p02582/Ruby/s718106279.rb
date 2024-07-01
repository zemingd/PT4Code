input = gets
count = input.count('R')
if count != 2 then
  puts count
else
  puts (1 + input.scan("RR").length)
end