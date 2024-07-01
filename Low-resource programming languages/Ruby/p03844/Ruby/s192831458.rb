list=gets.chomp.split(" ")
case list[1]
when "+" then
	print(list[0].to_i+list[2].to_i)
when "-" then
	print(list[0].to_i-list[2].to_i)
end