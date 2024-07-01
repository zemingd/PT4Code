a, b, c = gets.chomp.split(' ').map(&:to_i)

if c < a || c < b
  puts 'No'
else
  puts Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c) ? 'Yes' : 'No'
end

