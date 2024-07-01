N, x = gets.chomp.split(" ")
x = x.to_i
a = gets.chomp.split(" ").sort
n = 0

N.to_i.times do | i |
	x -= a[i].to_i
	if x < 0 
		break
	end
  	n += 1
end
if x > 0 && n > 0
  n -= 1
end
puts n