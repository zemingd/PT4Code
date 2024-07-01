a, b, c, d = gets.split.map(&:to_i)
count = 1
while a > 0 && c > 0
  if count.odd?
    c -= b
  else
    a -= d
  end
  count += 1
end
if a <= 0
  puts "No"
else
  puts "Yes"
end
