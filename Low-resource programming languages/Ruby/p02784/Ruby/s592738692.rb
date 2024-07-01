H,N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

sum = A.inject(:+)

if sum >= H
  puts "Yes"
else
  puts "No"
end
