#ENCODING-SHIFT-JIS

puts "Aを入力"
A=gets.to_i
puts"Bを入力" 
B=gets.to_i
C=A*B
C<=C

if C.even?
	puts "Yes"
else
	puts "No"
end