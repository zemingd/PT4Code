arr = gets.split("").map(&:to_i)

if arr.include?(9)
  puts "Yes"
else
  puts "No"
end
