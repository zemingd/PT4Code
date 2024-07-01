while true do
h,w = gets.split.map(&:to_i)
if h == 0 && w == 0
	break
end
i = 0
while i < h do
	r = "#" * w
	puts r
	i = i + 1
end

puts ""
end

