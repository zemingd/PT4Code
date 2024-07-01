a, b, c = gets.chomp.split(' ').map(&:to_i)

if a > b && a > c
  puts a * 10 + b + c
elsif b > a && b > c
  puts a + b * 10 + c
else
  puts a + b + c * 10
end
