n = gets.to_i
array = n.to_s.split("").map(&:to_i)
if n % array.inject(:+) == 0
  puts "Yes"
else
  puts "No"
end