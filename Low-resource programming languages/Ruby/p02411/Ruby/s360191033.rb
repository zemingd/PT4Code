def check_math_result(m, f, r)
	if(m == -1 || f == -1)
		return "F"
	end	
	# 合計点数で判定
	case (m + f)
	when 80..100
		return "A"
	when 65..79
		return "B"
	when 50..64
		return "C"
	when 30..49
		return (r >= 50) ? "C" : "D"
	else
		return "F"
	end
end

inputs = gets.strip().split(" ").map{|i| i.to_i}
m = inputs[0]
f = inputs[1]
r = inputs[2]

until m == -1 && f == -1 && r == -1
	puts check_math_result(m, f, r)
	inputs = gets.strip().split(" ").map{|i| i.to_i}
	m = inputs[0]
	f = inputs[1]
	r = inputs[2]
end
