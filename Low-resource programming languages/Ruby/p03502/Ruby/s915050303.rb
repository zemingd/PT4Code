n = gets.chomp
if n.to_i % n.chars.map(&:to_i).inject(:+) == 0
  puts 'Yes'
else
  puts 'No'
end
