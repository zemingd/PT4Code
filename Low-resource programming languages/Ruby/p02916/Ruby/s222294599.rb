n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

sum = 0
past_number = n + 1
a.each do |number|
  sum += b[number - 1]
  sum += c[number - 2] if number - past_number == 1
  past_number = number
end

puts sum