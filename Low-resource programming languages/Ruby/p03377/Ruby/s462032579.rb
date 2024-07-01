a, b, x = gets.chomp.split.map(&:to_i)

if (x-a) >= 0 && (x-a) <= b
  puts 'YES'
else
  puts 'NO'
end
