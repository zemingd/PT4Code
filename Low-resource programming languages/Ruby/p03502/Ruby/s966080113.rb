a = gets

n = 0

a.split(//).each{|i|
	n += i.to_i
}

print a.to_i % n == 0 ? "Yes" : "No"