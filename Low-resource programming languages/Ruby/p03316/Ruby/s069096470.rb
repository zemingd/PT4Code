n = gets.to_i
sn = n.to_s.chars.map(&:to_i).inject(:+)

if n % sn == 0
  puts 'Yes'
else
  puts 'No'
end
