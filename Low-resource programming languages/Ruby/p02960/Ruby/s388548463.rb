S = gets.chomp
k, m = [12,3,4,1,10,9], [1]+[0]*12
S.each_char.reverse_each{|c|
	if c != ??
		m.rotate! (c.ord-?0.ord)*k[0]
	else
		n, js = m.dup, [*0..12]
		9.times{
			js.rotate! k[0]
			js.each_with_index{|j,i|
				n[i] += m[j]
			}
		}
		m = n.map{|_|_%1000000007}
	end
	k.rotate!
}
p m[5]
