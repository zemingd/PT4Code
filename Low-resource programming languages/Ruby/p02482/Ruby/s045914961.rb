a, b = gets.chomp.split(' ').map(&:to_i)
if a < b && RUBY_VERSION == "1.9.2"
  puts "a < b"
elsif a > b
  puts "a > b"
else
  puts "a == b"
end