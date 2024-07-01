h,w = gets.split(' ').map(&:to_i)

n = h*w

if n.even? || w.even?
	puts n / 2
	exit
else
	puts n / 2 + 1
end