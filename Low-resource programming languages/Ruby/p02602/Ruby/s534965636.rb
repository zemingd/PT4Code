n,k = gets.split.map &:to_i
as = gets.split.map &:to_i

temp = as[0...k].inject(1, :*)

(k ... n).each{ |i|
	temp2 = temp / as[i - k] * as[i]
	
	if temp < temp2 then
		puts 'Yes'
	else
		puts 'No'
	end
	
	temp = temp2
}