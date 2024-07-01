require 'prime'

n = gets.to_i

T = Array.new
n.times do |i|
	T[i] = gets.to_i
end

T.uniq!

Ans = Array.new

T.size.times do |i|
	tmp = T[i].prime_division
	tmp.size.times do |j|
		Ans << tmp[j][0]
	end
end

Ans.uniq!
answer = T.max

Ans.size.times do |i|
	if answer % Ans[i] != 0
		answer *= Ans[i]
	end
end

puts answer
	