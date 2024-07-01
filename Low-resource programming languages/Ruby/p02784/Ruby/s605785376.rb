H, N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

sum = A.reduce(:+)

if sum >= H
  puts "Yes"
else
  puts "No"
end
