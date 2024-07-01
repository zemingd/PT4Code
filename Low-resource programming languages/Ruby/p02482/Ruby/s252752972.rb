a, b = gets.chomp.split(' ').map { |c| c.to_i }
if a < b
  puts "a < b"
elsif a > b
  puts "a > b"
else
  puts "a == b"
end