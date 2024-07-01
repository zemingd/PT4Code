a, b, c = STDIN.gets.chomp.split(' ').map(&:to_i)
if a < b && b < c
  puts "YES"
else
  puts "NO"
end