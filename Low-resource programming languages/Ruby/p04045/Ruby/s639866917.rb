n, k = gets.split.map &:to_i
d = gets.split.map &:to_i
while n.to_s.split("").map(&:to_i).any?{|i|d.include?(i)}
	n += 1
end
p n