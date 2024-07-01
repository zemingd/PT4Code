a,b,c = gets.chomp.split(" ").map(&:to_i)
sum = a+b+c
if sum >= 22 then
	print('bust')
else
	print('win')
end