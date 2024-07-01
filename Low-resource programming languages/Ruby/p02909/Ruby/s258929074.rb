s = gets.chomp.to_s
w = [ "Sunny", "Cloudy", "Rainy"]
if w.index(s) == 2
  puts "Sunny"
else
  puts w[w.index(s)+1]
end