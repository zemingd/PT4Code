rubyrubyn = gets.to_i
a = gets.split.map(&:to_i)
color = Array.new(8,0)
any = 0
n.times do |i|
	k = a[i]/400.to_i
	if k>=8
		any += 1
	else
		color[k] = 1
	end
end
cnt = color.count(1)
if cnt == 0
	min = 1
	max = any > 8 ? 8 : any
else
	min = cnt
	max = (cnt + any) > 8 ? 8 : (cnt+any)
end
print "#{min} #{max}"
