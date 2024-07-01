a,b,c,x=4.times.map{gets.to_i}
puts a.times.any?{|a|b.times{|b|c.times.count{|c| 500*a+100*b+50*c == x}}.inject(&:+)}.inject(&:+)