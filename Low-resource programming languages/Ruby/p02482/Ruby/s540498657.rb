number = Array.new()
num = gets
number = num.split(" ")
num1 = number[0].to_i
num2 = number[1].to_i

if num1 == num2
	puts "#{num1} == #{num2}"
end
if num1 > num2
	puts "#{num1} > #{num2}"
end
if num1 < num2
	puts "#{num1} < #{num2}"
end