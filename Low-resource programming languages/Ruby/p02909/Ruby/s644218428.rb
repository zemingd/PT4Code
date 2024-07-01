s = gets.chomp

w = ["Sunny", "Cloudy", "Rainy"]

i = w.index(s)
puts w[(i+1)%3]
