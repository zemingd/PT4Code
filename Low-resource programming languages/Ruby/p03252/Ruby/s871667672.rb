s = gets.chomp.split("").map &:ord
t = gets.chomp.split("").map &:ord

def convert(str)
	w = []
	result = []
	count = 0
	str.each{ |x|
		if w[x] == nil then
			w[x] = count.to_s
			count += 1
		end
		result << w[x]
	}
	result
end

if convert(s) == convert(t) then
	puts "Yes"
else
	puts "No"
end
