d,t,s=gets.chomp.split.map(&:to_i)

res = d / s
if res <= t
  puts 'Yes'
else
  puts 'No'
end