s = gets().chomp().split()
a = s[0].to_i()
b = s[1].to_i()
c = s[2].to_i()
k = gets().chomp().to_i()

arr = [a, b, c]
max = arr.max

sum = max

k.times { sum *= 2 }
sum = sum + a + b + c - max
puts sum
