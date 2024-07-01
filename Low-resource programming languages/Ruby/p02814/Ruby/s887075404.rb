require "prime"

def GCD(m, n)
	return 0 if m == 0 || n == 0
	while m != 0 && n != 0
		if m > n then
			m %= n
		else
			n %= m
		end
	end
	return [m, n].max
end

def LCM(m, n)
	return 0 if m == 0 || n == 0
	return m * n / GCD(m, n)
end

def div2(a)
	pr = a.prime_division
	ind = a.prime_division.transpose()[0].find_index{|aa| aa == 2}
	return ind == nil ? 0 : pr[ind][1]
	#p ind
end


n, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
divs = arr.map{|a| div2(a)}
if divs.uniq.length > 1 then
	puts 0
	exit
end

arr = arr.map{|a| a / 2}
#lcm = LCM(arr[0], arr[1])
lcm = arr[0].lcm(arr[1])
(2..arr.length - 2).each do |i|
	#lcm = LCM(arr[i], arr[i + 1])
	lcm = lcm.lcm(arr[i])
end

cnt = 0
ngo = 1
while ngo * lcm <= m
	cnt += 1
	ngo += 2
end
puts cnt
