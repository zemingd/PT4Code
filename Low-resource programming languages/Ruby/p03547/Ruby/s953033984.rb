n = gets.chomp.split(" ")
arr = n.sort
if n.uniq.size == 1
  puts "="
elsif arr.join("") == n.join("")
  puts ">"
else
  puts "<"
end

