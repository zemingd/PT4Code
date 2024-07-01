candy = gets.split("\s").map(&:to_i).sort

if(candy[2] == candy[0] + candy[1])
  puts "Yes"
else
  puts "No"
end