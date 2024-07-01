d,t,s=gets.chomp.split.map(&:to_i)

res = d.to_f / s.to_f

if res <= t
  puts 'Yes'
else
  puts 'No'
end