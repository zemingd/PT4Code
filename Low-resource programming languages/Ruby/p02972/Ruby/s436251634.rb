require 'prime'

N  = gets.to_i
An = [nil] + gets.split.map(&:to_i)
Primes = Prime.each(N)

answer = []
N.downto(1){|i|
	rem_sofar = 1 & Primes.inject(0){|acc,pr|
		break acc if N < pr*i
		acc + An[pr*i]
	}
	answer << i if An[i] != rem_sofar
}

p answer.size
puts answer.join(' ')
