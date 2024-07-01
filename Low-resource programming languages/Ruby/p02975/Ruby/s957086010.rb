n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

if a.inject(&:^).zero?
  puts "Yes"
else
  puts "No"
end