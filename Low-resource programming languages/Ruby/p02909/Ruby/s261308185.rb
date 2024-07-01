W = ["Sunny", "Rainy", "Cloudy"]
S = W.sample

case S
when "Sunny"
  puts "Cloudy"
when "Cloudy"
  puts "Rainy"
when "Rainy"
  puts "Sunny"
end