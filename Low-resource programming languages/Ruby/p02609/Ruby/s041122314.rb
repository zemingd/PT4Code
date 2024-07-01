n = gets.to_i
x = gets.chomp
 
f = Array.new(2 * 10 ** 5 + 1, 0) 
 
(1 .. (2 * 10 ** 5)).each{ |i|
	ind = i % i.to_s(2).count("1")
	f[i] = f[ind] + 1
}
 
count1 = x.count("1")
count1L = count1 + 1
count1R = count1 - 1
 
(1..n).each{ |i|
	if x[i - 1] == "1" then
		x[i - 1] = "0"
		if count1R == 0 then
			puts 0
		else
			puts f[x.to_i(2) % count1R] + 1
		end
		x[i - 1] = "1"
	else
		x[i - 1] = "1"
		puts f[x.to_i(2) % count1L] + 1
		x[i - 1] = "0"
	end
}