n, k = gets.split("\s").map(&:to_i)

count = 0

print (Math.log(n) / Math.log(k)).ceil
