H, N = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

sum = 0
for a in A
  sum += a
end

if sum >= H
  puts "Yes"
else
  puts "No"
end
