n = gets.chomp.to_i
a = gets.chomp.split(' ')
n.times{ |i|
  a[i] = a[i].to_i
}
#p n
#p a
sum = 0
n.times{ |i|
	(i+1).upto(n-1){ |j|
		sum += a[i] ^ a[j]
		sum %= 10**9 + 7
	}
}
p sum