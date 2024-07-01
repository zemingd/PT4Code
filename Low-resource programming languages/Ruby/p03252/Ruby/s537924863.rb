s = gets.chomp.split("")
t = gets.chomp.split("")

def convert(str)
	w = {}
	result = ""
	str.each{ |x|
		if w[x] == nil then
			w[x] = w.keys.size.to_s
		end
		result += w[x]
	}
	result
end

if convert(s) == convert(t) then
	puts "Yes"
else
	puts "No"
end
