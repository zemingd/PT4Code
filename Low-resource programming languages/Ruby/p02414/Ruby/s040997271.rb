inputs = gets.strip().split(" ").map{|i| i.to_i}
n, m, l = inputs[0], inputs[1], inputs[2]
a = Array.new(n){Array.new(m){0}}
b = Array.new(m){Array.new(l){0}}
c = Array.new(n){Array.new(l){0}}
for row_i in 0..n-1
	rows = gets.strip().split(" ").map{|i| i.to_i}
	a[row_i][0..m-1] = rows
end
for row_i in 0..m-1
	rows = gets.strip().split(" ").map{|i| i.to_i}
	b[row_i][0..l-1] = rows
end
for row_i in 0..n-1
	for col_i in 0..l-1
		for k in 0..m-1
			c[row_i][col_i] += a[row_i][k] * b[k][col_i]
		end
		print (col_i == 0)? c[row_i][col_i] : " #{c[row_i][col_i]}"
	end  
	puts ""
end
