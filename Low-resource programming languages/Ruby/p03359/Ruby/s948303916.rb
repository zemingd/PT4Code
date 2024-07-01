a, b = gets.chomp.split.map(&:to_i)

if a == b
  puts a
elsif a != b
  puts a - 1
end