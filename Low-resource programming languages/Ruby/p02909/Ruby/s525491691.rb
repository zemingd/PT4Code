status = gets.chomp
out = ["Sunny", "Cloudy", "Rainy"]

case status
  when out[0]
  	puts out[1]
  when out[1]
  	puts out[2]
  when out[2]
  	puts out[0]
end