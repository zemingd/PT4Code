a, b = gets.chomp.split(' ').map(&:to_i)

if [a, b].max - 1 > [a, b].min
  puts a+b+1
else
  puts a+b
end
