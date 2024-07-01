a,b = gets.split
if a.ord > b.ord
  puts ">"
elsif a.ord < b.ord
  puts "<"
else
  puts "="
end