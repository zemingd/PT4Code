x = gets.strip()
until x === "0"
	puts x.split("").reduce(0){|sum, n| sum + n.to_i}
	x = gets.strip()
end
