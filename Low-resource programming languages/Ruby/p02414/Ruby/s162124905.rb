def array_integer(a)
	0.upto(a.count) {|x|
		a[x] = a[x].to_i
	}
	return a
end

n,m,l = array_integer(STDIN.gets.split(" "))

a = Array.new(n).map{Array.new(m, 0)}
b = Array.new(m).map{Array.new(l, 0)}
c = Array.new(n).map{Array.new(l, 0)}

0.upto(n-1) {|i|
	a[i] = array_integer(STDIN.gets.split(" "))
}
0.upto(m-1) {|i|
	b[i] = array_integer(STDIN.gets.split(" "))
}

0.upto(n-1) {|i|
	0.upto(l-1) {|j|
		sum = 0
		0.upto(m-1) {|k|
			sum += a[i][k] * b[k][j]
		}
		c[i][j] = sum
	}
}

0.upto(n-1) {|i|
	0.upto(l-1) {|j|
		print c[i][j]
		print " " if j != l-1
	}
	print "\n"
}

