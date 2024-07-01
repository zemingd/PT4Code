S = gets.split("")

sum_val = 700

S.each do |s|
	sum_val += 100 if s == "o"
end

puts sum_val