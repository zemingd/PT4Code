array = gets.split().map!(&: to_i)
result = array[0] < array[1] && array[1] < array[2]  ? "Yes" : "No"
puts result