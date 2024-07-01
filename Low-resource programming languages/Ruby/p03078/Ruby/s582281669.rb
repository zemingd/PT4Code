x, y, z, k = gets.chomp.split.map &:to_i
a = gets.chomp.split.map &:to_i
b = gets.chomp.split.map &:to_i
c = gets.chomp.split.map &:to_i

a = a.sort{ |a1, b1| b1 <=> a1}
b = b.sort{ |a1, b1| b1 <=> a1}
c = c.sort{ |a1, b1| b1 <=> a1}

pool = []

(0...a.size).each{ |i|
	(0... [3000/(i+1), b.size].min).each{ |j|
		(0...[3000/(i+1)/(j+1), c.size].min).each{ |k|
			pool << a[i] + b[j] + c[k]
		}
	}
}

pool.sort!{ |a1,b1| b1 <=> a1 }

k.times{ |i|
	puts pool[i]
}
