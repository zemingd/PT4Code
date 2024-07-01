s = gets.chomp
ans = ""
if(s == "Sunny")
  ans = "Cloudy"
elsif(s == "Cloudy")
  ans = "Rainy"
else
  ans = "Sunny"
end
puts ans