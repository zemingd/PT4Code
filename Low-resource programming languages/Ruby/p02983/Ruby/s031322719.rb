l,r = gets.split(" ").map{|i|i.to_i}
if  r-l > 2018 then
	puts 0
else
	i = l%2019
	j = r%2019
	min = 2018
	if i<j then
		for p in [i..j-1] do
			for q in [p..j] do
				if (p*q)%2019 < min then
					min = (p*q)%2019
				end
			end
		end
	else
		puts 0
	end
end