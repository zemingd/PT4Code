N  = gets.to_i
Pn = gets.split.map(&:to_i)
mismatch = (1..N).count{|i|
	Pn[i-1] != i
}
puts(mismatch<=2 ? "YES" : "NO")
