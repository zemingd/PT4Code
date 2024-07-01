n = gets.to_i
home = gets.chomp.split(" ").map(&:to_i)
flag = [false, false, false, false, false, false, false, false]
max = 0
for i in 0..home.length-1
	case home[i]
	when (1..399) then flag[0] = true
		
	when (400..799) then flag[1] = true

	when (800..1199) then flag[2] = true

	when (1200..1599) then flag[3] = true

	when (1600..1999) then flag[4] = true

	when (2000..2399) then flag[5] = true

	when (2400..2799) then flag[6] = true

	when (2800..3199) then flag[7] = true

	when (3200..Float::INFINITY) then max += 1
	end
end
#p flag
result = flag.count(true)
max = result + max
puts  [result, max].join(" ")

