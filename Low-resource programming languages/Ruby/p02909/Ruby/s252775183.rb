s = gets.chomp
w = ["Sunny", "Cloudy", "Rainy"]
t = w[(w.find_index(s)+1) % 3]
puts t