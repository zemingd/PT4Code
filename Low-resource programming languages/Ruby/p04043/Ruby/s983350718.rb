input = gets.split(" ").map(&:to_i).sort

if input == [5,5,7]
  puts "YES"
else
  puts "NO"
end
