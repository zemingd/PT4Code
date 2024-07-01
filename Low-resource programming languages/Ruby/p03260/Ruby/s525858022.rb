arr = gets.chomp.split("")

ret = arr[0].to_i * arr[1].to_i

puts ret%2==1 ? "Yes" : "No"