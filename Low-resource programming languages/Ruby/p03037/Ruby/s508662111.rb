N, M = gets.split(' ').map(&:to_i)

l = Array.new(M)
r = Array.new(M)
M.times do |i|
	l[i], r[i] = gets.split(' ').map(&:to_i)
end

cards = r.min - l.max + 1
if cards > 0
	puts cards
else
	puts 0
end