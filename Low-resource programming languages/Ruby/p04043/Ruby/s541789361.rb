arr = gets.to_i.map(&:to_i)
puts (arr[0] == 5 && arr[1] == 7 && arr[2] == 5)? "YES" : "NO"