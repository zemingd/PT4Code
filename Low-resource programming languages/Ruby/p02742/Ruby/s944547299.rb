h,w=gets.chomp.split(" ").map(&:to_i)
fir = 0;
if w % 2 == 1
  fir = (w+1)/2
else
  fir = w/2
end
ans = 0
if h % 2 == 1
	ans = ((h -1) / 2 * w ) + fir
else
	ans = h/2 * w
end
puts ans