h, w = gets.chomp.split(" ").map(&:to_i)
if h.even?  then
	puts h * w / 2
else
	puts h * w / 2 + 1
end