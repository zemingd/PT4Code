n = gets.to_i
a = gets.split.map(&:to_i)
min = nil

(n-1).times do |i|
	tmp = (a.slice(0..i).inject(&:+) - a.slice(i+1..-1).inject(&:+)).abs
	min = tmp if min.nil? || min > tmp
end

puts min