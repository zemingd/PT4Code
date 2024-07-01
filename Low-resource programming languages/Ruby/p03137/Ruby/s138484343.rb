n, m = gets.chomp.split(' ').map{|x| x.to_i }
x = gets.chomp.split(' ').map{|x| x.to_i }

if n >= m
  puts 0
else
	x.sort!
	d = []
	(1...m).each do |i|
  	d << x[i] - x[i-1]
	end

	puts d.sort.first(m-n).inject(:+)
end
