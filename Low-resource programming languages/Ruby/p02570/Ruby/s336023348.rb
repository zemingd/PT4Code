d,t,s = gets.chomp.split.map(&:to_i)

if (d.to_f / s).ceil <= t
  puts 'Yes'
else
  puts 'No'
end
