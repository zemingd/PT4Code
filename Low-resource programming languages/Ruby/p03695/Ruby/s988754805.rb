gets;
a = gets.split(' ').map{|x|x.to_i}

a = a.map{|x|
	case x
		when    1..399  then 0
		when  400..799  then 1
		when  800..1199 then 2
		when 1200..1599 then 3
		when 1600..1999 then 4
		when 2000..2399 then 5
		when 2400..2799 then 6
		when 2800..3199 then 7
		else 8
	end
}

n_over3200 = a.count {|x| x == 8}

n_colors = a.reject{|x| x == 8 }.uniq.size

puts "#{[1,n_colors].max} #{[8, n_colors + n_over3200].min}"
