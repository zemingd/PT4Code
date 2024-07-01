a,b,c,d = gets.split.map(&:to_i)
i = 0
while a > 0 && c > 0
  if i.even?
    c -= b
  else
    a -= d
  end
  i += 1
end
if a > c
  puts "Yes"
else
  puts "No"
end
