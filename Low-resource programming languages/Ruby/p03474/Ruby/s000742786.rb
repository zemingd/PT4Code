a, b = gets.split.map(&:to_i)
s = gets.chomp
if s.match?(/^[0-9]{#{a}}-[0-9]{#{b}}$/)
  puts 'Yes'
else
  puts 'No'
end