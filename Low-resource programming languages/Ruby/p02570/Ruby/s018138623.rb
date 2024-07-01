D, T, S = gets.split.map &:to_i
if D / S.to_f <= T
  puts 'Yes'
else
  puts 'No'
end