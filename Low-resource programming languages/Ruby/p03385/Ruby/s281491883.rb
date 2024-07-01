a = gets.split.map(&:to_i)
sort = a.sort.join(" ")
if sort == "abc"
  puts "Yes"
else
  puts "No"
end