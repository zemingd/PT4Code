d, t, s = gets.split.map &:to_i
if d / s <= t
  puts 'Yes'
else
  puts 'No'
end