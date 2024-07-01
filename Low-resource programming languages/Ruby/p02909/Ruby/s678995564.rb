arr = ["Sunny", "Cloudy", "Rainy"]
s = gets.chomp
if s == "Sunny"
  puts arr[1]
elsif s == "Cloudy"
  puts arr[2]
else
  puts arr[0]
end