require 'pp'

A,B=gets.chomp.split(' ').map{|n| n.to_i}

sum = 0
A.upto(B){|i|
	a_5 = i%10
	a_4 = i/10%10
	a_3 = i/100%10
	a_2 = i/1000%10
	a_1 = i/10000%10
	if(a_5 == a_1 && a_4 == a_2)
		sum += 1
	end
}
puts sum
