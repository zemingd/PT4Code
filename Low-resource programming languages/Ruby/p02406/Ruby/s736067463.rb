#!/usr/bin/ruby

def main()
	n = gets.chomp.to_i

	3.upto(n) do |i|
		if three(i) then
			print ' %d' % i
		end
	end
	puts
end

def three(i)
	if i%3 == 0
		return true
	end

	while i > 0 do
		if i%10 == 3 then
			return true
		end
		i /= 10
	end
	return false
end

if __FILE__ == $0
	main()
end

