n,m = gets.chomp.split.map(&:to_i)
line = gets.chomp.split.map(&:to_i)
line = line.sort.reverse
sum = 0
flag = 0
for i in 0..n-1
  sum += line[i]
end
for i in 0..m-1
  if line[i] >= sum/(4*2)
    flag += 1
  end
end
if flag == m
  puts "Yes"
else
  puts "No"
end