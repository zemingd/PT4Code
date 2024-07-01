S = '?'*100000#gets.chomp

ks, l = [12,3,4,1,10,9], []
ks.each{|k|
	l[k] = a = Array.new(13){ [] }
	js = [*0..12]
	9.times{
		js.rotate! k
		js.each_with_index{|j,i|
			a[i] << j
		}
	}
}
ks = ks.cycle

m = [1]+[0]*12
S.each_char.reverse_each.with_index{|c,i|
	k = ks.next
	if c != ??
		m.rotate! (c.ord-?0.ord)*k
	else
		m = l[k].map.with_index{|a,i|
			m.values_at(*a).inject(m[i],:+) % 1000000007
		}
	end
}
p m[5]
