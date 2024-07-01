str = gets.chomp
a = str[0].to_i
b = str[2].to_i
c = str[4].to_i
xs = Array.new()
xs.push(a*10+b+c)
xs.push(a+b*10+c)
xs.push(a+b+c*10)
max_xs = 0
for i in 0..2
	if max_xs <= xs[i]
    	max_xs = xs[i]
    end
end
puts max_xs.to_s