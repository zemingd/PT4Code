n = gets.to_i
out = [0]
zan = 100000

for x in 1..n do
	zan = zan * 1.05
	while zan%1000!=0
		zan = 1+zan
	end
end

out = zan.to_s.chomp.split(".")

puts out[0]