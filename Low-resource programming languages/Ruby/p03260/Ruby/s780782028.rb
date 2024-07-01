a, b = gets.split.map(&:to_i)
if a.odd? and b.odd?
  puts 'Yes'
else
  puts 'No'
end