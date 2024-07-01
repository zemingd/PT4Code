input = gets.split
a = input[0].to_i
b = input[1].to_i
ans_d = a / b
ans_r = a % b
ans_f = a.to_f / b.to_f
puts sprintf( "%d %d %.8f", ans_d, ans_r, ans_f.to_f )

