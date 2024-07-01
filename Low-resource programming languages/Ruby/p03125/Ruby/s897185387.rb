a, b = gets.chomp.split.map(&:to_i)
if (b%a).zero?
  puts a+b
else
  puts b-a
end