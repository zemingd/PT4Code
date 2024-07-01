m=5.times.map{gets.to_i}
r=m.map{|i|(10-i)%10}
p m.inject(:+)+r.inject(:+)-r.max