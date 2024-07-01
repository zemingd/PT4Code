N = gets.to_i

if N % (N.to_s.chars.map(&:to_i).inject(:+)) == 0
  puts 'Yes'
else
  puts 'No'
end
