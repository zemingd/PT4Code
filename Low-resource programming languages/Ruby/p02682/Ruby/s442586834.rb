f = gets.split().map { |a| a.to_i }
if f[0] + f[1] >= f[3]
	puts f[0]
	exit
end
count = f[3] - f[0] - f[1]
puts -1 * count + f[0]