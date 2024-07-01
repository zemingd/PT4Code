N,M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
良い展望台です = [true]*N
$<.each{|ln|
	a,b = ln.split.map{|_| _.to_i-1 }
	良い展望台です[a] = false if H[a] <= H[b]
	良い展望台です[b] = false if H[b] <= H[a]
}
p 良い展望台です.count(true)