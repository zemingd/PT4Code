arry = gets.split(" ")
num = arry[0] + arry[1] + arry[2]
puts num.to_i % 4 == 0 ? "YES" : "NO"