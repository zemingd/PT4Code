a = 5.times.map{gets.to_i}.sort_by{|x|(x-1)%10}
p a[0] + a[1..-1].map{|x|(x+9)/10*10}.inject(:+)