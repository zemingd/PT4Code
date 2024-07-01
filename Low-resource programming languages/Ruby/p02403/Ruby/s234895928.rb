h,w=gets.chomp.split(" ").map(&:to_i)
if (h==0 && w==0) then
else
h.times do
	w.times do
			print '#'
	end
	puts
end
end