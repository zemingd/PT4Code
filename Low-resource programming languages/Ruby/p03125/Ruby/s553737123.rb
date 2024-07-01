a,b = gets.split.map(&:to_i)

print (if (b % a == 0) then a + b else b -a end)
