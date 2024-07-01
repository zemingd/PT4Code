money = 100000
weeks = gets.to_i
1.upto(weeks) do |i|
	money = (money * 1.05).to_i
end

if money % 10000 > 0
	money += 10000 - money % 10000
end
puts money