n = gets
numbers = gets.split(" ").map(&:to_i)

evn_numbers = numbers.select(&:even?)

if evn_numbers.select { |n| (n % 3 == 0) || (n % 5 == 0) }.all?
  puts "APPROVED"
else
  puts "DENIED"
end