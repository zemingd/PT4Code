# Your code here!

list = gets.to_s

if (list[0].to_i == list[1].to_i and list[1].to_i == list[2].to_i) or (list[1].to_i == list[2].to_i and list[2].to_i == list[3].to_i)
    puts "Yes"
else
    puts "No"
end
