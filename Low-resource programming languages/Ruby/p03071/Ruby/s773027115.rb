a, b = STDIN.gets.chomp.split(' ').map(&:to_i)

if a == b
  puts a + b
elsif a > b
  puts a + a - 1
else
  puts b + b -1
end