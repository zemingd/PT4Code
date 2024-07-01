
n = gets.to_i
ts = []

while gets
	ts << $_.to_i
end

ans = ts[0]

ts.each{|t|
	ans = ans.lcm(t)
}

puts ans
