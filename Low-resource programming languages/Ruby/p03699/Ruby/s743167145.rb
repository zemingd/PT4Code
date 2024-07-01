sum = 0
N = gets.to_i
N.times do |i|
	sum += gets.to_i
end
puts sum if sum%10!=0
puts 0 if sum%10==0