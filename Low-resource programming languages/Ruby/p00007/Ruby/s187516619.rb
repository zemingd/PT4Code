money = 100000
weeks = gets.to_i
1.upto(weeks) do |i|
	money = (money * 1.05).to_i
	money = (money / 1000).ceil * 1000
end
puts money