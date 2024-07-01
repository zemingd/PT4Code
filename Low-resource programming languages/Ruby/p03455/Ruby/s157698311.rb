arr = gets.chomp.split(" ")
 
puts (arr[0].to_i * arr[1].to_i) % 2 == 0 ? "Even" : "Odd"