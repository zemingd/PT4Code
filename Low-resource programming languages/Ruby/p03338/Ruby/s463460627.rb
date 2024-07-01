n = gets.to_i
s = gets.chomp.split("")

count = 0

(0...s.size-1).each{|i|
	temp = (s[0..i].uniq & s[i+1..-1].uniq).size
	if temp > count then
		count =temp
	end
}

puts count