s = gets.split(' ')
h = s[0].to_i
a = s[1].to_i
count = 0

while h > 0 do
  count += 1
  if h - a >= 0
    h = h - a
  else
    puts count
    exit
  end
end
puts count
exit