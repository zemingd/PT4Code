N = gets.chomp

f = N.chars.map(&:to_i).inject(:+)
if N.to_i  % f == 0
  puts 'Yes'
else
  puts 'No'
end

