a, b, c = gets.chomp.split.map(&:to_i)

if Math.sqrt(c) > (Math.sqrt(a) + Math.sqrt(b))
  puts 'Yes'
else
  puts 'No'
end