d, t, s = gets.chomp.split.map(&:to_i)

t1 = d.to_f / s.to_f
if t1 <= t
  puts 'Yes'
else
  puts 'No'
end
