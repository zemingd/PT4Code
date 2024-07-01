a = gets
b = a.split

if b[2].to_i - b[4].to_i < 0  then
    puts "No"
elsif b[2].to_i + b[4].to_i > b[0].to_i then
    puts "No"
elsif b[3].to_i - b[4].to_i < 0 then
    puts "No"
elsif b[3].to_i + b[4].to_i > b[1].to_i then
    puts "No"
else
    puts "Yes"
end
