K = gets.to_i
A,B = gets.strip.split(nil).map(&:to_i)
sum = 0
for x in A..B
  if x%K == 0
    sum += 1
  end
end
if sum == 0
  puts "NG"
else
  puts "OK"
end