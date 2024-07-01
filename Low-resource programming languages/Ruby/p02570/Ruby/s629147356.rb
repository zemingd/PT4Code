d, t, s = gets.split.map &:to_i
if (d / s).to_f <= t
  puts 'Yes'
else
  puts 'No'
end