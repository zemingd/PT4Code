LEN = 9
PART = 12
def slicer(a, s)
	i = 0
	while s.length > LEN
		a[i] = s.slice!(-LEN,LEN).to_i
		i += 1
	end
	a[i] = s.to_i
	return a
end

gets.to_i.times do
	s_n1,s_n2 = gets.chomp, gets.chomp
	if s_n1.length > 80 or s_n2.length > 80 then
		puts "overflow"
	else
		a1, a2, sum = Array.new(PART,0), Array.new(PART,0), Array.new(PART,0)
		a1, a2 = slicer(a1,s_n1), slicer(a2,s_n2)
		up = 0
		sum.count.times do |i|
			sum[i] = (a1[i]+a2[i]+up).to_s
			if sum[i] == "0" then
				sum[i] = nil
			elsif sum[i].length > LEN then
				up = sum[i].to_i - 999999999
				sum[i].slice!(0)
			else
				up = 0
			end
		end
		if sum.reverse.join.length > 80 then puts "overflow"
		else puts sum.reverse.join.to_i end
	end
end