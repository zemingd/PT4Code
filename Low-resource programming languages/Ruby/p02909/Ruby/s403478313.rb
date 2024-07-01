today = gets.chomp

tommorrow = if today == "Sunny"
  "Cloudy"
elsif today == "Cloudy"
  "Rainy"
elsif today == "Rainy"
  "Sunny"
end

puts tommorrow
