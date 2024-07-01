n = gets.to_i

cons = {}

n.times{ |i|
	cons[i+1] = []

	a = gets.to_i
	a.times{
		x, y = gets.split.map &:to_i
		y = (y == 1)
		cons[i + 1] << [x, y]
	}
}

max = 0

tf = [true,false]
tf_s = tf

(n-1).times {
	tf_s = tf_s.product(tf)
}

tf_s = tf_s.map{ |x| x.flatten}

tf_s.each{ |tf_e|
	flag = true
	count = 0
	tf_e.each_with_index{ |tf_ee, i|
		if tf_ee then
			count += 1
			
			cons[i+1].each{ |cons_e|
				if tf_e[cons_e[0] - 1] != cons_e[1] then
					flag = false
					break
				end
#				break if ! flag
			}
		end
#		break if ! flag
	}
	
	if flag then
		puts count
		exit
	end
}
