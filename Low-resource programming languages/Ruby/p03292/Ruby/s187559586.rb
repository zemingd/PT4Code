a = gets.split.map(&:to_i)
a.sort!
sum = 0

for i in  0..a.length-1 do
  if i == (a.length-1)
    puts sum
    break
  end
  sum += a[i+1] - a[i]
end