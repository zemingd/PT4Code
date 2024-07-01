arr = gets.chomp.split(" ").map(&:to_i)
if arr.uniq.length == 2 then
  puts "Yes"
else
  puts "No"
end
