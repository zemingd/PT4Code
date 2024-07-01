h,w = gets.split(' ').map(&:to_i)

if h.even? || w.even?
	puts (h * w) / 2
else
	puts (h * w) / 2 + 1
end