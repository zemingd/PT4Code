s = gets.chomp

array = ["Sunny", "Cloudy", "Rainy"]

index = 0
index = array.find_index(s) # find_index で左端から検索

puts array[(index + 1) % 3]
# ( index + 1 )で array 要素を + 1 される
# array[ % 3]で array 要素のうち↑で定義された該当されないものを排除