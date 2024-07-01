a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i


coin500 = [*0..a]
coin100 = [*0..b]
coin50 = [*0..c]

puts coin500.product(coin100,coin50).collect{|arr| arr[0]*500 + arr[1]*100 + arr[2]*50}.select{|num| num == x}.size
