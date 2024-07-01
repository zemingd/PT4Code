numbers = gets.split.map!{|item| item.to_i}
numbers.sort!

for i in 0..(numbers.length - 2) do
	print numbers[i] ," "
end

print numbers[numbers.length - 1] ,"\n"