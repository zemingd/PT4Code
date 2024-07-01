require 'prime'

N = gets.to_i

count = 0

(1..N).each{ |k|
	if k % 2 == 0 then
		next
	end

	p = Prime.prime_division(k)
	if p.map{ |x| x[1] + 1 }.inject(1, :*) == 8 then
		count += 1
	end
}

puts count