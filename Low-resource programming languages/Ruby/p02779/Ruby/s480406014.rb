n = gets.to_i
a = gets.split.map(&:to_i)

if a.uniq.length == a.length
  puts "Yes"
else
  puts "No"
end