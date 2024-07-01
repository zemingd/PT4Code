candies = gets.chomp.split(" ").map(&:to_i)
candies.sort!
if candies[0] + candies[1] == candies[2]
  puts "Yes"
else
  puts "No"
end