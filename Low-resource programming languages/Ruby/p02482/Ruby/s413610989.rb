a, b = gets.chomp.split(' ').map(&:to_i)
if a < b && RUBY_VERSION == "1.8.7"
  puts "a < b"
elsif a > b
  puts "a > b"
else
  puts "a == b"
end