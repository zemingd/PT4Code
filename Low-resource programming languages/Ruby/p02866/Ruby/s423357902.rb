def nein
	p 0
	exit
end

N,*D = $<.read.split.map(&:to_i)
nein unless D.shift == 0

a = []
D.each{|d|
	a[d] ||= 0
	a[d] += 1
}
nein if a[0]
a[0] = 1
nein if a.any?(&:nil?)

p a.each_cons(2).inject(1){|z,(a,b)|
	z * (a**b) % 998244353
}
