#!/usr/bin/ruby
s=gets.chomp.bytes.map{|b|b-97}
n=gets.to_i
(s.size-1).times{|i|
	m=26-s[i]
	if n>=m
		n-=m
		s[i]=0
	end
}
s[s.size-1]=(s[s.size-1]+n)%26
puts s.map{|e|(e+97).chr}*''