#! ruby -Ku

ans = ""
d = Array.new(4)

num = gets.to_i

4.times do |i|
	d[4-i-1] = num%10
	num /= 10
end

str = "#{d[0]}+#{d[1]}+#{d[2]}+#{d[3]}=7"
astr = Array.new(3)
f1 = 0
f2 = 0

check = d[0]
2.times do |e|
	if e == 0 then
		check += d[1]
		astr[0] = "+"
	else
		check -= 2*d[1]
		astr[0] = "-"
	end
	2.times do |f|
		if f == 0 then
			check += d[2]
			check += d[2] if f1 > 0
			astr[1] = "+"
			f1 += 1
		else
			check -= 2*d[2]
			astr[1] = "-"
		end
		2.times do |g|
			if g == 0 then
				check += d[3]
				check += d[3] if f2 > 0
				astr[2] = "+"
				f2 += 1
			else
				check -= 2*d[3]
				astr[2] = "-"
			end
			#find answer
			if check == 7 then
				3.times do |i|
					str[2*i+1] = astr[i]
				end
				ans = str
			end
		end
	end
end

puts ans