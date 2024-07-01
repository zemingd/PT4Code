a=gets.split.map(&:to_i)
if a[0]<=a[1]*a[2]
  puts 'Yes'
else
  puts 'No'
end