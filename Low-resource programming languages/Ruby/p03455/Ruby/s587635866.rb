a, b = gets.chomp.split(" ").map(&:to_i)
total = a * b
if total.even?
  puts 'Even'
else
  puts 'Odd'
end