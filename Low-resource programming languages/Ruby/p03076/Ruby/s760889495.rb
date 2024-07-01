a = 5.times.map{gets.to_i}
if a.map{|v|v % 10}.all?{|v|v == 0}
    puts a.inject(&:+)
else
	puts a.map{|v|((v + 9) / 10) * 10}.inject(&:+) + a.map{|v|v % 10}.delete_if{|v|v == 0}.min - 10
end