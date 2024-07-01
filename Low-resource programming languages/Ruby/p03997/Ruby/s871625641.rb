X = {"a" => gets.chomp, "b" => gets.chomp, "c" => gets.chomp}

X["turn"] = "a"

while (X["a"].length)*(X["b"].length)*(X["c"].length) > 0
	X[X["turn"]].slice!(0)
	X["turn"] = X[X["turn"]][0] || X["turn"]
end


puts X["turn"].upcase