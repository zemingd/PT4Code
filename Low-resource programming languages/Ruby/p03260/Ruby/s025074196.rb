a,b = gets.chomp.split().map(&:to_i)

if a.odd? && b.odd?
  puts 'Yes'
else
  puts 'No'
end
