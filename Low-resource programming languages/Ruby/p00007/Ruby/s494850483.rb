n = gets.to_i
money = 100000
n.times do |i|
	money *= 1.05
	money = money.to_i
end

money = money.to_s
money = money.split("")
if money[-1] != "0" or money[-2] != 0 or money[-3] != "0" or money[-4] != "0"
	for i in 1..4 do
		money[-i] = "0"
	end
	money[-5] = money[-5].to_i
	money[-5] += 1
	money[-5] = money[-5].to_s
end
money = money.join("")
money = money.to_i
puts money