s = gets.chomp.split("").map &:ord
t = gets.chomp.split("").map &:ord

def convert(str)
	w = []
	result = ""
	count = 0
	str.each{ |x|
		if w[x] == nil then
			w[x] = count.to_s
			
		end
		result += w[x]
	}
	result
end

convert(s)
convert(t)

