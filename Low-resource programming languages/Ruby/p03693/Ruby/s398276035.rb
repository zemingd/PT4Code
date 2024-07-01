r,g,b = 3.times.map{gets.split(' ').map(&:to_i)}

n = (r*100) + (g*10) + b

if (n % 4) == 0
	puts 'YES'
else
	puts 'NO'
end
