input = gets.chomp
p,q,r = input.split.collect{ |item| item.to_i}
arr = [p,q,r].sort
result = arr[0] + arr[1]
puts result