gets

inputs = gets.chomp.split.map{ |x| x.to_i }

count = 0

(0 ... (inputs.size - 2)).each { |i|
	if [inputs[i] , inputs[i+1] ,inputs[i+2]].sort[1] == inputs[i+1] then
		count += 1
	end
}

puts count

STDOUT.flush
