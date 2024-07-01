arr = gets.strip.split(" ").map!(&:to_i)
if (arr[0] < arr[1]) then
  puts 0
else
  puts 10
end