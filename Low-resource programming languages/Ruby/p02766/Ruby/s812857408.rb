input = gets.split(' ').map {|s| s.to_i}
n = input[0]
k = input[1]

result = n.to_s(k).size
print result
