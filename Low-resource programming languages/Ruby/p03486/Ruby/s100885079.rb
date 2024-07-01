a=gets.chomp.to_s.split("")
b=gets.chomp.to_s.split("")

if a.sort.inject(:+) > b.sort.reverse.inject(:+)
  puts "Yes"
else
  puts "No"
end
