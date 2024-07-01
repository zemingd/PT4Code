N = gets.chomp

if N.to_i % N.chars.map(&:to_i).inject(:+) == 0
  puts 'Yes'
else
  puts 'No'
end
