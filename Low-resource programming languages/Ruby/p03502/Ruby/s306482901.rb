input = gets.chomp
n = input.to_i

sum = 0
input.split("").map(&:to_i).each do |i|
  sum += i
end

if n % sum === 0
  puts "Yes"
else
  puts "No"
end