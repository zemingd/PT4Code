status = gets.to_str
out = ["Sunny", "Cloudy", "Rainy"]

case status
  when "Sunny"
  	puts 'Cloudy'
  when "Cloudy"
  	puts 'Rainy'
  when "Rainy"
  	puts 'Sunny'
end