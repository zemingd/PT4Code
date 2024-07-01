require 'prime'

x = gets.to_i

Prime.each{ |i|
	if i >= x then
		puts i
		break
	end
}