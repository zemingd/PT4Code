s = gets.chomp

array = ["Rainy", "Cloudy", "Sunny"]

index = 0
index = array.find_index(s) # find_index で左端から検索

puts index + 1
