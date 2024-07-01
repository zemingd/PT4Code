#!/usr/bin/env ruby

if __FILE__ == $0 then
	man = Array.new(4).map { Array.new(3).map { Array.new(10, 0) } }
	n = gets.chomp.to_i

	1.upto(n) do
		b,f,r,v = gets.split.map { |x| x.to_i }
		man[b-1][f-1][r-1] += v
	end

	puts " "+man.map { |x| x.map { |y| y.join(" ") }.join("\n ") }.join("\n"+"#"*20+"\n ")
end

