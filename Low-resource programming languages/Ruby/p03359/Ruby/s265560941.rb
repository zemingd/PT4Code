a, b = gets.chomp.split.map(&:to_i)

ans = a

if a == b
  puts ans
elsif a != b
  puts a
end