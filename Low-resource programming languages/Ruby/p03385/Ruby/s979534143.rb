a = gets.split("").map(&:to_i)
sort = a.sort
if sort.join("") == "abc"
  puts "Yes"
else
  puts "No"
end