age,price = gets.split.map &:to_i

if age >= 13
    puts price
elsif age >= 6
    puts price / 2
else
    puts "0"
end
