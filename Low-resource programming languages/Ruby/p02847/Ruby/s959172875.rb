s = gets.chomp

array = ["SAT", "FRI", "THU", "WED", "TUE", "MON", "SUN"]

index = array.find_index(s)

puts index + 1
