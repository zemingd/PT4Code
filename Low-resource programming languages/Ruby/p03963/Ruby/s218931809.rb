n, k = gets.split(" ").map {|s| s.to_i }

r = k

(n-1).times {
	r  = r * (k-1)
}

r = [r, 2**31-1].min

