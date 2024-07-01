array = Array.new(19)
s = gets.chomp
array = s.split("")
array[5] = " "
array[13] = " "
a = String.new
19.times{|i|
a = a + array[i]
}
print(a)
