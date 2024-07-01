m = gets.split("").map(&:to_s)
sum = m[0] + m[1]
m = m.map(&:to_i)
if sum % m.inject(:+) == 0
  puts "Yes"
else
  puts "No"
end
