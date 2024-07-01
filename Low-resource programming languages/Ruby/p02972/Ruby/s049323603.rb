N  = gets.to_i
An = [nil] + gets.split.map(&:to_i)

Bn = [nil] + [0]*N
N.downto(1){|i|
	rem       = An[i] # 0 or 1
	rem_sofar = i.step(N, i).inject(0){|rem,_| (rem+Bn[i])&1 }
	Bn[i] = 1 if rem != rem_sofar
}

p Bn.count(1)
puts (1..N).select{|i| Bn[i] == 1 }.join(' ')
