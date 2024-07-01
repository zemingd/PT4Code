input = gets.chomp
lis = ["Sunny", "Cloudy", "Rainy"]

if input == lis[0]
    puts lis[1]
elsif input == lis[1]
    puts lis[2]
else
    puts lis[0]
end