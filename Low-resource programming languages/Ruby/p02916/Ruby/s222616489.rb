n = gets.to_i
a = gets.split.map{|e|e.to_i-1}
b = gets.split.map &:to_i
c = gets.split.map &:to_i

manzoku = 0
n.times{|i|
	manzoku += b[a[i]]
	manzoku += c[a[i]] if i<=n-2 && a[i+1]==a[i]+1
}
p manzoku