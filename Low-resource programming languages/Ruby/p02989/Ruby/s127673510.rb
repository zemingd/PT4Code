n = gets.to_i
array = gets.split.map(&:to_i).sort

a = array[n/2-1]
b = array[n/2]

p (a..b).size - 1